// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_device_token_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserDeviceTokenRecord> _$userDeviceTokenRecordSerializer =
    new _$UserDeviceTokenRecordSerializer();

class _$UserDeviceTokenRecordSerializer
    implements StructuredSerializer<UserDeviceTokenRecord> {
  @override
  final Iterable<Type> types = const [
    UserDeviceTokenRecord,
    _$UserDeviceTokenRecord
  ];
  @override
  final String wireName = 'UserDeviceTokenRecord';

  @override
  Iterable<Object> serialize(
      Serializers serializers, UserDeviceTokenRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'user',
      serializers.serialize(object.user,
          specifiedType: const FullType(
              DocumentReference, const [const FullType(Object)])),
      'deviceToken',
      serializers.serialize(object.deviceToken,
          specifiedType: const FullType(String)),
      'platformName',
      serializers.serialize(object.platformName,
          specifiedType: const FullType(String)),
      'userName',
      serializers.serialize(object.userName,
          specifiedType: const FullType(String)),
      'createdDate',
      serializers.serialize(object.createdDate,
          specifiedType: const FullType(DateTime)),
      'Document__Reference__Field',
      serializers.serialize(object.reference,
          specifiedType: const FullType(
              DocumentReference, const [const FullType(Object)])),
    ];

    return result;
  }

  @override
  UserDeviceTokenRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserDeviceTokenRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'user':
          result.user = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'deviceToken':
          result.deviceToken = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'platformName':
          result.platformName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'userName':
          result.userName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'createdDate':
          result.createdDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$UserDeviceTokenRecord extends UserDeviceTokenRecord {
  @override
  final DocumentReference<Object> user;
  @override
  final String deviceToken;
  @override
  final String platformName;
  @override
  final String userName;
  @override
  final DateTime createdDate;
  @override
  final DocumentReference<Object> reference;

  factory _$UserDeviceTokenRecord(
          [void Function(UserDeviceTokenRecordBuilder) updates]) =>
      (new UserDeviceTokenRecordBuilder()..update(updates)).build();

  _$UserDeviceTokenRecord._(
      {this.user,
      this.deviceToken,
      this.platformName,
      this.userName,
      this.createdDate,
      this.reference})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        user, 'UserDeviceTokenRecord', 'user');
    BuiltValueNullFieldError.checkNotNull(
        deviceToken, 'UserDeviceTokenRecord', 'deviceToken');
    BuiltValueNullFieldError.checkNotNull(
        platformName, 'UserDeviceTokenRecord', 'platformName');
    BuiltValueNullFieldError.checkNotNull(
        userName, 'UserDeviceTokenRecord', 'userName');
    BuiltValueNullFieldError.checkNotNull(
        createdDate, 'UserDeviceTokenRecord', 'createdDate');
    BuiltValueNullFieldError.checkNotNull(
        reference, 'UserDeviceTokenRecord', 'reference');
  }

  @override
  UserDeviceTokenRecord rebuild(
          void Function(UserDeviceTokenRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserDeviceTokenRecordBuilder toBuilder() =>
      new UserDeviceTokenRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserDeviceTokenRecord &&
        user == other.user &&
        deviceToken == other.deviceToken &&
        platformName == other.platformName &&
        userName == other.userName &&
        createdDate == other.createdDate &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, user.hashCode), deviceToken.hashCode),
                    platformName.hashCode),
                userName.hashCode),
            createdDate.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UserDeviceTokenRecord')
          ..add('user', user)
          ..add('deviceToken', deviceToken)
          ..add('platformName', platformName)
          ..add('userName', userName)
          ..add('createdDate', createdDate)
          ..add('reference', reference))
        .toString();
  }
}

class UserDeviceTokenRecordBuilder
    implements Builder<UserDeviceTokenRecord, UserDeviceTokenRecordBuilder> {
  _$UserDeviceTokenRecord _$v;

  DocumentReference<Object> _user;
  DocumentReference<Object> get user => _$this._user;
  set user(DocumentReference<Object> user) => _$this._user = user;

  String _deviceToken;
  String get deviceToken => _$this._deviceToken;
  set deviceToken(String deviceToken) => _$this._deviceToken = deviceToken;

  String _platformName;
  String get platformName => _$this._platformName;
  set platformName(String platformName) => _$this._platformName = platformName;

  String _userName;
  String get userName => _$this._userName;
  set userName(String userName) => _$this._userName = userName;

  DateTime _createdDate;
  DateTime get createdDate => _$this._createdDate;
  set createdDate(DateTime createdDate) => _$this._createdDate = createdDate;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  UserDeviceTokenRecordBuilder() {
    UserDeviceTokenRecord._initializeBuilder(this);
  }

  UserDeviceTokenRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _user = $v.user;
      _deviceToken = $v.deviceToken;
      _platformName = $v.platformName;
      _userName = $v.userName;
      _createdDate = $v.createdDate;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserDeviceTokenRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserDeviceTokenRecord;
  }

  @override
  void update(void Function(UserDeviceTokenRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UserDeviceTokenRecord build() {
    final _$result = _$v ??
        new _$UserDeviceTokenRecord._(
            user: BuiltValueNullFieldError.checkNotNull(
                user, 'UserDeviceTokenRecord', 'user'),
            deviceToken: BuiltValueNullFieldError.checkNotNull(
                deviceToken, 'UserDeviceTokenRecord', 'deviceToken'),
            platformName: BuiltValueNullFieldError.checkNotNull(
                platformName, 'UserDeviceTokenRecord', 'platformName'),
            userName: BuiltValueNullFieldError.checkNotNull(
                userName, 'UserDeviceTokenRecord', 'userName'),
            createdDate: BuiltValueNullFieldError.checkNotNull(
                createdDate, 'UserDeviceTokenRecord', 'createdDate'),
            reference: BuiltValueNullFieldError.checkNotNull(
                reference, 'UserDeviceTokenRecord', 'reference'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
