import 'package:flutter/material.dart';
import 'dart:async';

import 'package:grpc/grpc.dart';

import 'package:spy_flutter/src/generated/pong.pb.dart';
import 'package:spy_flutter/src/generated/pong.pbgrpc.dart';
import 'package:spy_flutter/src/generated/spy.pb.dart';
import 'package:spy_flutter/src/generated/spy.pbgrpc.dart';
import 'package:pedometer/pedometer.dart';
import 'package:sensors/sensors.dart';
import 'package:device_info/device_info.dart';
import 'package:battery/battery.dart';


void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  RandomWordsState createState() => new RandomWordsState();
}

class RandomWordsState extends State<MyApp> {
  bool _isListening;
  Pedometer _pedometer;
  StreamSubscription<int> _pedometerSubscription;
  StreamSubscription<AccelerometerEvent> _accelerometerSubscription;
  StreamSubscription<UserAccelerometerEvent> _userAccelerometerSubscription;
  StreamSubscription<GyroscopeEvent> _gyroscopeSubscription;
  String _stepCountValue = 'unknown';
  String _accelerometer = 'unknown';
  String _userAccelerometer = 'unknown';
  String _gyroscope = 'unknown';
  String _reply = 'unknown';
  DeviceInfoPlugin _deviceInfo;
  AndroidDeviceInfo _androidInfo;
  IosDeviceInfo _iosInfo;
  Battery _battery;

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
    startListening();
    _deviceInfo = DeviceInfoPlugin();
    try {
      _androidInfo = await _deviceInfo.androidInfo;
      sendDeviceInfo(_androidInfo.model);
      // print('Running on ${_androidInfo.model}');  // e.g. "Moto G (4)"

      _iosInfo = await _deviceInfo.iosInfo;
      sendDeviceInfo(_iosInfo.utsname.machine);
      // print('Running on ${_iosInfo.utsname.machine}');  // e.g. "iPod7,1"
    } catch (e) {
    }
    _battery = Battery();

    // Access current battery level
    // Send battery level every second
    Timer.periodic(new Duration(seconds: 1), (_) async {
      sendBatteryLevel(await _battery.batteryLevel);
    });
    // Be informed when the state (full, charging, discharging) changes
    /*
    _battery.onBatteryStateChanged.listen((BatteryState state) {
      // Do something with new state
    });
    */
  }

  void onData(int stepCountValue) {
    // print(stepCountValue);
  }

  void startListening() {
    setState(() => _isListening = true);
    _pedometer = new Pedometer();
    _pedometerSubscription = _pedometer.pedometerStream.listen(_onData,
        onError: _onError, onDone: _onDone, cancelOnError: true);

    _accelerometerSubscription = accelerometerEvents.listen((AccelerometerEvent event) {
      sendAccelerometer(event);
      setState(() => _accelerometer = '$event');
    });

    _userAccelerometerSubscription = userAccelerometerEvents.listen((UserAccelerometerEvent event) {
      sendUserAccelerometer(event);
      setState(() => _userAccelerometer = '$event');
    });

    _gyroscopeSubscription = gyroscopeEvents.listen((GyroscopeEvent event) {
      sendGyroscope(event);
      setState(() => _gyroscope = '$event');
    });
  }

  void stopListening() {
    setState(() => _isListening = false);
    _pedometerSubscription.cancel();
    _accelerometerSubscription.cancel();
    _userAccelerometerSubscription.cancel();
    _gyroscopeSubscription.cancel();
  }

  void _onData(int stepCountValue) async {
    sendStep(stepCountValue);
    setState(() => _stepCountValue = '$stepCountValue');
  }

  void _onDone() => print('Finished pedometer tracking');

  void _onError(error) => print('Flutter Pedometer Error: $error');

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: const Text('grpc_flutter'),
        ),
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(32),
              child: Row(
                children: [
                  Expanded(
                    /*1*/
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FlatButton(
                          onPressed: () {
                            _reply = createPong();
                          },
                          child: Text(
                            'reply: $_reply',
                          ),
                        ),
                        FlatButton(
                          onPressed: () {
                            stopListening();
                          },
                          child: Text(
                            'listening: $_isListening',
                          ),
                        ),
                        Text(
                          'steps: $_stepCountValue',
                          style: TextStyle(
                            color: Colors.grey[500],
                          ),
                        ),
                        Text(
                          'accelerometer: $_accelerometer',
                          style: TextStyle(
                            color: Colors.grey[500],
                          ),
                        ),
                        Text(
                          'userAccelerometer: $_userAccelerometer',
                          style: TextStyle(
                            color: Colors.grey[500],
                          ),
                        ),
                        Text(
                          'gyroscope: $_gyroscope',
                          style: TextStyle(
                            color: Colors.grey[500],
                          ),
                        ),
                      ],
                    ),
                  ),
                  /*3*/
                  Icon(
                    Icons.star,
                    color: Colors.red[500],
                  ),
                  Text('41'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Future<String> pong() async {
  final channel = ClientChannel('192.168.0.24',
      port: 50051,
      options:
          const ChannelOptions(credentials: ChannelCredentials.insecure()));
  final stub = GreeterClient(channel);

  final name = 'world';
  var response;
  try {
    response = await stub.sayHello(HelloRequest()..name = name);
    // print('Greeter client received: ${response.message}');
  } catch (e) {
    // print('Caught error: $e');
  }
  await channel.shutdown();
  return response != null ? response.message : '';
}

String createPong() {
  var pongg = pong();
  return 'Your pong is: $pongg';
}

Future<String> step(int count) async {
  final channel = ClientChannel('192.168.0.24',
      port: 50051,
      options:
          const ChannelOptions(credentials: ChannelCredentials.insecure()));
  final stub = SpyClient(channel);

  var response;
  try {
    response = await stub.sendStep(StepUpdate()..value = count);
    // print('Spy client received: ${response.message}');
  } catch (e) {
    // print('Caught error: $e');
  }
  await channel.shutdown();
  return response != null ? response.message : '';
}

String sendStep(int count) {
  var response = step(count);
  return 'Server response $response';
}

Future<String> accelerometer(AccelerometerEvent value) async {
  final channel = ClientChannel('192.168.0.24',
    port: 50051,
    options:
        const ChannelOptions(credentials: ChannelCredentials.insecure()));
  final stub = SpyClient(channel);

  var response;
  try {
      response = await stub.sendAccelerometer(AccelerometerUpdate()
        ..x = value.x
        ..y = value.y
        ..z = value.z);
    // print('Spy client received: ${response.message}');
  } catch (e) {
    // print('Caught error: $e');
  }
  await channel.shutdown();
  return response != null ? response.message : '';
}

String sendAccelerometer(AccelerometerEvent value) {
  var response = accelerometer(value);
  return 'Server response $response';
}

Future<String> userAccelerometer(UserAccelerometerEvent value) async {
  final channel = ClientChannel('192.168.0.24',
    port: 50051,
    options:
        const ChannelOptions(credentials: ChannelCredentials.insecure()));
  final stub = SpyClient(channel);

  var response;
  try {
      response = await stub.sendUserAccelerometer(UserAccelerometerUpdate()
        ..x = value.x
        ..y = value.y
        ..z = value.z);
    // print('Spy client received: ${response.message}');
  } catch (e) {
    // print('Caught error: $e');
  }
  await channel.shutdown();
  return response != null ? response.message : '';
}

String sendUserAccelerometer(UserAccelerometerEvent value) {
  var response = userAccelerometer(value);
  return 'Server response $response';
}

Future<String> gyroscope(GyroscopeEvent value) async {
  final channel = ClientChannel('192.168.0.24',
    port: 50051,
    options:
        const ChannelOptions(credentials: ChannelCredentials.insecure()));
  final stub = SpyClient(channel);

  var response;
  try {
    response = await stub.sendGyroscope(GyroscopeUpdate()
      ..x = value.x
      ..y = value.y
      ..z = value.z);
    // print('Spy client received: ${response.message}');
  } catch (e) {
    // print('Caught error: $e');
  }
  await channel.shutdown();
  return response != null ? response.message : '';
}

String sendGyroscope(GyroscopeEvent value) {
  var response = gyroscope(value);
  return 'Server response $response';
}

Future<String> deviceInfo(String value) async {
  final channel = ClientChannel('192.168.0.24',
    port: 50051,
    options:
        const ChannelOptions(credentials: ChannelCredentials.insecure()));
  final stub = SpyClient(channel);

  var response;
  try {
    response = await stub.sendDeviceInfo(DeviceInfo()..model = value);
    // print('Spy client received: ${response.message}');
  } catch (e) {
    // print('Caught error: $e');
  }
  await channel.shutdown();
  return response != null ? response.message : '';
}

String sendDeviceInfo(String value) {
  var response = deviceInfo(value);
  return 'Server response $response';
}

Future<String> batteryLevel(int value) async {
  final channel = ClientChannel('192.168.0.24',
    port: 50051,
    options:
        const ChannelOptions(credentials: ChannelCredentials.insecure()));
  final stub = SpyClient(channel);

  var response;
  try {
    response = await stub.sendBatteryLevel(BatteryLevel()..value = value);
    // print('Spy client received: ${response.message}');
  } catch (e) {
    // print('Caught error: $e');
  }
  await channel.shutdown();
  return response != null ? response.message : '';
}

String sendBatteryLevel(int value) {
  var response = batteryLevel(value);
  return 'Server response $response';
}