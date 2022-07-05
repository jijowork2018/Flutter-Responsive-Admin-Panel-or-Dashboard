// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'master_diet_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MasterDietRecord> _$masterDietRecordSerializer =
    new _$MasterDietRecordSerializer();

class _$MasterDietRecordSerializer
    implements StructuredSerializer<MasterDietRecord> {
  @override
  final Iterable<Type> types = const [MasterDietRecord, _$MasterDietRecord];
  @override
  final String wireName = 'MasterDietRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, MasterDietRecord object,
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
  MasterDietRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MasterDietRecordBuilder();

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

class _$MasterDietRecord extends MasterDietRecord {
  @override
  final String description;
  @override
  final String name;
  @override
  final DocumentReference<Object> reference;

  factory _$MasterDietRecord(
          [void Function(MasterDietRecordBuilder) updates]) =>
      (new MasterDietRecordBuilder()..update(updates)).build();

  _$MasterDietRecord._({this.description, this.name, this.reference})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        description, 'MasterDietRecord', 'description');
    BuiltValueNullFieldError.checkNotNull(name, 'MasterDietRecord', 'name');
    BuiltValueNullFieldError.checkNotNull(
        reference, 'MasterDietRecord', 'reference');
  }

  @override
  MasterDietRecord rebuild(void Function(MasterDietRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MasterDietRecordBuilder toBuilder() =>
      new MasterDietRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MasterDietRecord &&
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
    return (newBuiltValueToStringHelper('MasterDietRecord')
          ..add('description', description)
          ..add('name', name)
          ..add('reference', reference))
        .toString();
  }
}

class MasterDietRecordBuilder
    implements Builder<MasterDietRecord, MasterDietRecordBuilder> {
  _$MasterDietRecord _$v;

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

  MasterDietRecordBuilder() {
    MasterDietRecord._initializeBuilder(this);
  }

  MasterDietRecordBuilder get _$this {
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
  void replace(MasterDietRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MasterDietRecord;
  }

  @override
  void update(void Function(MasterDietRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MasterDietRecord build() {
    final _$result = _$v ??
        new _$MasterDietRecord._(
            description: BuiltValueNullFieldError.checkNotNull(
                description, 'MasterDietRecord', 'description'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, 'MasterDietRecord', 'name'),
            reference: BuiltValueNullFieldError.checkNotNull(
                reference, 'MasterDietRecord', 'reference'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
