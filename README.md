# spy_flutter

```bash
pub global activate protoc_plugin
```

```bash
protoc --dart_out=grpc:lib/src/generated -Iprotos protos/pong.proto
protoc --dart_out=grpc:lib/src/generated -Iprotos protos/spy.proto
```

```bash
dart bin/client.dart
```

```bash
flutter run
```
