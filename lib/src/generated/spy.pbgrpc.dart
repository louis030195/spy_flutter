///
//  Generated code. Do not modify.
//  source: spy.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'spy.pb.dart' as $0;
export 'spy.pb.dart';

class SpyClient extends $grpc.Client {
  static final _$sendStep = $grpc.ClientMethod<$0.StepUpdate, $0.Reply>(
      '/pong.Spy/SendStep',
      ($0.StepUpdate value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Reply.fromBuffer(value));
  static final _$sendAccelerometer =
      $grpc.ClientMethod<$0.AccelerometerUpdate, $0.Reply>(
          '/pong.Spy/SendAccelerometer',
          ($0.AccelerometerUpdate value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Reply.fromBuffer(value));
  static final _$sendUserAccelerometer =
      $grpc.ClientMethod<$0.UserAccelerometerUpdate, $0.Reply>(
          '/pong.Spy/SendUserAccelerometer',
          ($0.UserAccelerometerUpdate value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Reply.fromBuffer(value));
  static final _$sendGyroscope =
      $grpc.ClientMethod<$0.GyroscopeUpdate, $0.Reply>(
          '/pong.Spy/SendGyroscope',
          ($0.GyroscopeUpdate value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Reply.fromBuffer(value));
  static final _$sendDeviceInfo = $grpc.ClientMethod<$0.DeviceInfo, $0.Reply>(
      '/pong.Spy/SendDeviceInfo',
      ($0.DeviceInfo value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Reply.fromBuffer(value));
  static final _$sendBatteryLevel =
      $grpc.ClientMethod<$0.BatteryLevel, $0.Reply>(
          '/pong.Spy/SendBatteryLevel',
          ($0.BatteryLevel value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Reply.fromBuffer(value));

  SpyClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$0.Reply> sendStep($0.StepUpdate request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$sendStep, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.Reply> sendAccelerometer(
      $0.AccelerometerUpdate request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$sendAccelerometer, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.Reply> sendUserAccelerometer(
      $0.UserAccelerometerUpdate request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$sendUserAccelerometer, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.Reply> sendGyroscope($0.GyroscopeUpdate request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$sendGyroscope, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.Reply> sendDeviceInfo($0.DeviceInfo request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$sendDeviceInfo, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.Reply> sendBatteryLevel($0.BatteryLevel request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$sendBatteryLevel, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class SpyServiceBase extends $grpc.Service {
  $core.String get $name => 'pong.Spy';

  SpyServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.StepUpdate, $0.Reply>(
        'SendStep',
        sendStep_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.StepUpdate.fromBuffer(value),
        ($0.Reply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AccelerometerUpdate, $0.Reply>(
        'SendAccelerometer',
        sendAccelerometer_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AccelerometerUpdate.fromBuffer(value),
        ($0.Reply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UserAccelerometerUpdate, $0.Reply>(
        'SendUserAccelerometer',
        sendUserAccelerometer_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.UserAccelerometerUpdate.fromBuffer(value),
        ($0.Reply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GyroscopeUpdate, $0.Reply>(
        'SendGyroscope',
        sendGyroscope_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GyroscopeUpdate.fromBuffer(value),
        ($0.Reply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeviceInfo, $0.Reply>(
        'SendDeviceInfo',
        sendDeviceInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DeviceInfo.fromBuffer(value),
        ($0.Reply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.BatteryLevel, $0.Reply>(
        'SendBatteryLevel',
        sendBatteryLevel_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.BatteryLevel.fromBuffer(value),
        ($0.Reply value) => value.writeToBuffer()));
  }

  $async.Future<$0.Reply> sendStep_Pre(
      $grpc.ServiceCall call, $async.Future<$0.StepUpdate> request) async {
    return sendStep(call, await request);
  }

  $async.Future<$0.Reply> sendAccelerometer_Pre($grpc.ServiceCall call,
      $async.Future<$0.AccelerometerUpdate> request) async {
    return sendAccelerometer(call, await request);
  }

  $async.Future<$0.Reply> sendUserAccelerometer_Pre($grpc.ServiceCall call,
      $async.Future<$0.UserAccelerometerUpdate> request) async {
    return sendUserAccelerometer(call, await request);
  }

  $async.Future<$0.Reply> sendGyroscope_Pre(
      $grpc.ServiceCall call, $async.Future<$0.GyroscopeUpdate> request) async {
    return sendGyroscope(call, await request);
  }

  $async.Future<$0.Reply> sendDeviceInfo_Pre(
      $grpc.ServiceCall call, $async.Future<$0.DeviceInfo> request) async {
    return sendDeviceInfo(call, await request);
  }

  $async.Future<$0.Reply> sendBatteryLevel_Pre(
      $grpc.ServiceCall call, $async.Future<$0.BatteryLevel> request) async {
    return sendBatteryLevel(call, await request);
  }

  $async.Future<$0.Reply> sendStep(
      $grpc.ServiceCall call, $0.StepUpdate request);
  $async.Future<$0.Reply> sendAccelerometer(
      $grpc.ServiceCall call, $0.AccelerometerUpdate request);
  $async.Future<$0.Reply> sendUserAccelerometer(
      $grpc.ServiceCall call, $0.UserAccelerometerUpdate request);
  $async.Future<$0.Reply> sendGyroscope(
      $grpc.ServiceCall call, $0.GyroscopeUpdate request);
  $async.Future<$0.Reply> sendDeviceInfo(
      $grpc.ServiceCall call, $0.DeviceInfo request);
  $async.Future<$0.Reply> sendBatteryLevel(
      $grpc.ServiceCall call, $0.BatteryLevel request);
}
