// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'master_workout_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MasterWorkoutRecord> _$masterWorkoutRecordSerializer =
    new _$MasterWorkoutRecordSerializer();

class _$MasterWorkoutRecordSerializer
    implements StructuredSerializer<MasterWorkoutRecord> {
  @override
  final Iterable<Type> types = const [
    MasterWorkoutRecord,
    _$MasterWorkoutRecord
  ];
  @override
  final String wireName = 'MasterWorkoutRecord';

  @override
  Iterable<Object> serialize(
      Serializers serializers, MasterWorkoutRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'Document__Reference__Field',
      serializers.serialize(object.reference,
          specifiedType: const FullType(
              DocumentReference, const [const FullType(Object)])),
    ];

    return result;
  }

  @override
  MasterWorkoutRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MasterWorkoutRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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

class _$MasterWorkoutRecord extends MasterWorkoutRecord {
  @override
  final String description;
  @override
  final String name;
  @override
  final DocumentReference<Object> reference;

  factory _$MasterWorkoutRecord(
          [void Function(MasterWorkoutRecordBuilder) updates]) =>
      (new MasterWorkoutRecordBuilder()..update(updates)).build();

  _$MasterWorkoutRecord._({this.description, this.name, this.reference})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        description, 'MasterWorkoutRecord', 'description');
    BuiltValueNullFieldError.checkNotNull(name, 'MasterWorkoutRecord', 'name');
    BuiltValueNullFieldError.checkNotNull(
        reference, 'MasterWorkoutRecord', 'reference');
  }

  @override
  MasterWorkoutRecord rebuild(
          void Function(MasterWorkoutRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MasterWorkoutRecordBuilder toBuilder() =>
      new MasterWorkoutRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MasterWorkoutRecord &&
        description == other.description &&
        name == other.name &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, description.hashCode), name.hashCode), reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MasterWorkoutRecord')
          ..add('description', description)
          ..add('name', name)
          ..add('reference', reference))
        .toString();
  }
}

class MasterWorkoutRecordBuilder
    implements Builder<MasterWorkoutRecord, MasterWorkoutRecordBuilder> {
  _$MasterWorkoutRecord _$v;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  MasterWorkoutRecordBuilder() {
    MasterWorkoutRecord._initializeBuilder(this);
  }

  MasterWorkoutRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _description = $v.description;
      _name = $v.name;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MasterWorkoutRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MasterWorkoutRecord;
  }

  @override
  void update(void Function(MasterWorkoutRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MasterWorkoutRecord build() {
    final _$result = _$v ??
        new _$MasterWorkoutRecord._(
            description: BuiltValueNullFieldError.checkNotNull(
                description, 'MasterWorkoutRecord', 'description'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, 'MasterWorkoutRecord', 'name'),
            reference: BuiltValueNullFieldError.checkNotNull(
                reference, 'MasterWorkoutRecord', 'reference'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
