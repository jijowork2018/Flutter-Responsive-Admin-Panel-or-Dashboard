// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'friends_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FriendsRecord> _$friendsRecordSerializer =
    new _$FriendsRecordSerializer();

class _$FriendsRecordSerializer implements StructuredSerializer<FriendsRecord> {
  @override
  final Iterable<Type> types = const [FriendsRecord, _$FriendsRecord];
  @override
  final String wireName = 'FriendsRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, FriendsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'follower',
      serializers.serialize(object.follower,
          specifiedType: const FullType(
              DocumentReference, const [const FullType(Object)])),
      'followee',
      serializers.serialize(object.followee,
          specifiedType: const FullType(
              DocumentReference, const [const FullType(Object)])),
      'Document__Reference__Field',
      serializers.serialize(object.reference,
          specifiedType: const FullType(
              DocumentReference, const [const FullType(Object)])),
    ];

    return result;
  }

  @override
  FriendsRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FriendsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'follower':
          result.follower = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'followee':
          result.followee = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
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

class _$FriendsRecord extends FriendsRecord {
  @override
  final DocumentReference<Object> follower;
  @override
  final DocumentReference<Object> followee;
  @override
  final DocumentReference<Object> reference;

  factory _$FriendsRecord([void Function(FriendsRecordBuilder) updates]) =>
      (new FriendsRecordBuilder()..update(updates)).build();

  _$FriendsRecord._({this.follower, this.followee, this.reference})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        follower, 'FriendsRecord', 'follower');
    BuiltValueNullFieldError.checkNotNull(
        followee, 'FriendsRecord', 'followee');
    BuiltValueNullFieldError.checkNotNull(
        reference, 'FriendsRecord', 'reference');
  }

  @override
  FriendsRecord rebuild(void Function(FriendsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FriendsRecordBuilder toBuilder() => new FriendsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FriendsRecord &&
        follower == other.follower &&
        followee == other.followee &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, follower.hashCode), followee.hashCode), reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FriendsRecord')
          ..add('follower', follower)
          ..add('followee', followee)
          ..add('reference', reference))
        .toString();
  }
}

class FriendsRecordBuilder
    implements Builder<FriendsRecord, FriendsRecordBuilder> {
  _$FriendsRecord _$v;

  DocumentReference<Object> _follower;
  DocumentReference<Object> get follower => _$this._follower;
  set follower(DocumentReference<Object> follower) =>
      _$this._follower = follower;

  DocumentReference<Object> _followee;
  DocumentReference<Object> get followee => _$this._followee;
  set followee(DocumentReference<Object> followee) =>
      _$this._followee = followee;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  FriendsRecordBuilder() {
    FriendsRecord._initializeBuilder(this);
  }

  FriendsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _follower = $v.follower;
      _followee = $v.followee;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FriendsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FriendsRecord;
  }

  @override
  void update(void Function(FriendsRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$FriendsRecord build() {
    final _$result = _$v ??
        new _$FriendsRecord._(
            follower: BuiltValueNullFieldError.checkNotNull(
                follower, 'FriendsRecord', 'follower'),
            followee: BuiltValueNullFieldError.checkNotNull(
                followee, 'FriendsRecord', 'followee'),
            reference: BuiltValueNullFieldError.checkNotNull(
                reference, 'FriendsRecord', 'reference'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
