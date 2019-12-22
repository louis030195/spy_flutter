import 'dart:async';

import 'package:grpc/grpc.dart';

import 'package:spy_flutter/src/generated/pong.pb.dart';
import 'package:spy_flutter/src/generated/pong.pbgrpc.dart';

Future<void> main(List<String> args) async {
  final channel = ClientChannel('localhost',
      port: 50051,
      options:
          const ChannelOptions(credentials: ChannelCredentials.insecure()));
  final stub = GreeterClient(channel);

  final name = args.isNotEmpty ? args[0] : 'world';

  try {
    final response = await stub.sayHello(HelloRequest()..name = name);
    print('Greeter client received: ${response.message}');
  } catch (e) {
    print('Caught error: $e');
  }
  await channel.shutdown();
}
