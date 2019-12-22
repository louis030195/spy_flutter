///
//  Generated code. Do not modify.
//  source: spy.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class StepUpdate extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('StepUpdate', package: const $pb.PackageName('pong'), createEmptyInstance: create)
    ..a<$core.int>(1, 'value', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  StepUpdate._() : super();
  factory StepUpdate() => create();
  factory StepUpdate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StepUpdate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  StepUpdate clone() => StepUpdate()..mergeFromMessage(this);
  StepUpdate copyWith(void Function(StepUpdate) updates) => super.copyWith((message) => updates(message as StepUpdate));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StepUpdate create() => StepUpdate._();
  StepUpdate createEmptyInstance() => create();
  static $pb.PbList<StepUpdate> createRepeated() => $pb.PbList<StepUpdate>();
  @$core.pragma('dart2js:noInline')
  static StepUpdate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StepUpdate>(create);
  static StepUpdate _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get value => $_getIZ(0);
  @$pb.TagNumber(1)
  set value($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
}

class AccelerometerUpdate extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AccelerometerUpdate', package: const $pb.PackageName('pong'), createEmptyInstance: create)
    ..a<$core.double>(1, 'x', $pb.PbFieldType.OD)
    ..a<$core.double>(2, 'y', $pb.PbFieldType.OD)
    ..a<$core.double>(3, 'z', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  AccelerometerUpdate._() : super();
  factory AccelerometerUpdate() => create();
  factory AccelerometerUpdate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccelerometerUpdate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AccelerometerUpdate clone() => AccelerometerUpdate()..mergeFromMessage(this);
  AccelerometerUpdate copyWith(void Function(AccelerometerUpdate) updates) => super.copyWith((message) => updates(message as AccelerometerUpdate));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AccelerometerUpdate create() => AccelerometerUpdate._();
  AccelerometerUpdate createEmptyInstance() => create();
  static $pb.PbList<AccelerometerUpdate> createRepeated() => $pb.PbList<AccelerometerUpdate>();
  @$core.pragma('dart2js:noInline')
  static AccelerometerUpdate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AccelerometerUpdate>(create);
  static AccelerometerUpdate _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get x => $_getN(0);
  @$pb.TagNumber(1)
  set x($core.double v) { $_setDouble(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasX() => $_has(0);
  @$pb.TagNumber(1)
  void clearX() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get y => $_getN(1);
  @$pb.TagNumber(2)
  set y($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasY() => $_has(1);
  @$pb.TagNumber(2)
  void clearY() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get z => $_getN(2);
  @$pb.TagNumber(3)
  set z($core.double v) { $_setDouble(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasZ() => $_has(2);
  @$pb.TagNumber(3)
  void clearZ() => clearField(3);
}

class UserAccelerometerUpdate extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UserAccelerometerUpdate', package: const $pb.PackageName('pong'), createEmptyInstance: create)
    ..a<$core.double>(1, 'x', $pb.PbFieldType.OD)
    ..a<$core.double>(2, 'y', $pb.PbFieldType.OD)
    ..a<$core.double>(3, 'z', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  UserAccelerometerUpdate._() : super();
  factory UserAccelerometerUpdate() => create();
  factory UserAccelerometerUpdate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserAccelerometerUpdate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UserAccelerometerUpdate clone() => UserAccelerometerUpdate()..mergeFromMessage(this);
  UserAccelerometerUpdate copyWith(void Function(UserAccelerometerUpdate) updates) => super.copyWith((message) => updates(message as UserAccelerometerUpdate));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserAccelerometerUpdate create() => UserAccelerometerUpdate._();
  UserAccelerometerUpdate createEmptyInstance() => create();
  static $pb.PbList<UserAccelerometerUpdate> createRepeated() => $pb.PbList<UserAccelerometerUpdate>();
  @$core.pragma('dart2js:noInline')
  static UserAccelerometerUpdate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserAccelerometerUpdate>(create);
  static UserAccelerometerUpdate _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get x => $_getN(0);
  @$pb.TagNumber(1)
  set x($core.double v) { $_setDouble(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasX() => $_has(0);
  @$pb.TagNumber(1)
  void clearX() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get y => $_getN(1);
  @$pb.TagNumber(2)
  set y($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasY() => $_has(1);
  @$pb.TagNumber(2)
  void clearY() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get z => $_getN(2);
  @$pb.TagNumber(3)
  set z($core.double v) { $_setDouble(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasZ() => $_has(2);
  @$pb.TagNumber(3)
  void clearZ() => clearField(3);
}

class GyroscopeUpdate extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GyroscopeUpdate', package: const $pb.PackageName('pong'), createEmptyInstance: create)
    ..a<$core.double>(1, 'x', $pb.PbFieldType.OD)
    ..a<$core.double>(2, 'y', $pb.PbFieldType.OD)
    ..a<$core.double>(3, 'z', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  GyroscopeUpdate._() : super();
  factory GyroscopeUpdate() => create();
  factory GyroscopeUpdate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GyroscopeUpdate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GyroscopeUpdate clone() => GyroscopeUpdate()..mergeFromMessage(this);
  GyroscopeUpdate copyWith(void Function(GyroscopeUpdate) updates) => super.copyWith((message) => updates(message as GyroscopeUpdate));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GyroscopeUpdate create() => GyroscopeUpdate._();
  GyroscopeUpdate createEmptyInstance() => create();
  static $pb.PbList<GyroscopeUpdate> createRepeated() => $pb.PbList<GyroscopeUpdate>();
  @$core.pragma('dart2js:noInline')
  static GyroscopeUpdate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GyroscopeUpdate>(create);
  static GyroscopeUpdate _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get x => $_getN(0);
  @$pb.TagNumber(1)
  set x($core.double v) { $_setDouble(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasX() => $_has(0);
  @$pb.TagNumber(1)
  void clearX() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get y => $_getN(1);
  @$pb.TagNumber(2)
  set y($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasY() => $_has(1);
  @$pb.TagNumber(2)
  void clearY() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get z => $_getN(2);
  @$pb.TagNumber(3)
  set z($core.double v) { $_setDouble(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasZ() => $_has(2);
  @$pb.TagNumber(3)
  void clearZ() => clearField(3);
}

class DeviceInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DeviceInfo', package: const $pb.PackageName('pong'), createEmptyInstance: create)
    ..aOS(1, 'model')
    ..hasRequiredFields = false
  ;

  DeviceInfo._() : super();
  factory DeviceInfo() => create();
  factory DeviceInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeviceInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DeviceInfo clone() => DeviceInfo()..mergeFromMessage(this);
  DeviceInfo copyWith(void Function(DeviceInfo) updates) => super.copyWith((message) => updates(message as DeviceInfo));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeviceInfo create() => DeviceInfo._();
  DeviceInfo createEmptyInstance() => create();
  static $pb.PbList<DeviceInfo> createRepeated() => $pb.PbList<DeviceInfo>();
  @$core.pragma('dart2js:noInline')
  static DeviceInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeviceInfo>(create);
  static DeviceInfo _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get model => $_getSZ(0);
  @$pb.TagNumber(1)
  set model($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasModel() => $_has(0);
  @$pb.TagNumber(1)
  void clearModel() => clearField(1);
}

class BatteryLevel extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BatteryLevel', package: const $pb.PackageName('pong'), createEmptyInstance: create)
    ..a<$core.int>(1, 'value', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  BatteryLevel._() : super();
  factory BatteryLevel() => create();
  factory BatteryLevel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BatteryLevel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  BatteryLevel clone() => BatteryLevel()..mergeFromMessage(this);
  BatteryLevel copyWith(void Function(BatteryLevel) updates) => super.copyWith((message) => updates(message as BatteryLevel));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BatteryLevel create() => BatteryLevel._();
  BatteryLevel createEmptyInstance() => create();
  static $pb.PbList<BatteryLevel> createRepeated() => $pb.PbList<BatteryLevel>();
  @$core.pragma('dart2js:noInline')
  static BatteryLevel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BatteryLevel>(create);
  static BatteryLevel _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get value => $_getIZ(0);
  @$pb.TagNumber(1)
  set value($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
}

class Reply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Reply', package: const $pb.PackageName('pong'), createEmptyInstance: create)
    ..aOS(1, 'message')
    ..hasRequiredFields = false
  ;

  Reply._() : super();
  factory Reply() => create();
  factory Reply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Reply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Reply clone() => Reply()..mergeFromMessage(this);
  Reply copyWith(void Function(Reply) updates) => super.copyWith((message) => updates(message as Reply));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Reply create() => Reply._();
  Reply createEmptyInstance() => create();
  static $pb.PbList<Reply> createRepeated() => $pb.PbList<Reply>();
  @$core.pragma('dart2js:noInline')
  static Reply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Reply>(create);
  static Reply _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get message => $_getSZ(0);
  @$pb.TagNumber(1)
  set message($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => clearField(1);
}

