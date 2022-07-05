// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'diet_routine_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DietRoutineRecord> _$dietRoutineRecordSerializer =
    new _$DietRoutineRecordSerializer();

class _$DietRoutineRecordSerializer
    implements StructuredSerializer<DietRoutineRecord> {
  @override
  final Iterable<Type> types = const [DietRoutineRecord, _$DietRoutineRecord];
  @override
  final String wireName = 'DietRoutineRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, DietRoutineRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
      'isCurrent',
      serializers.serialize(object.isCurrent,
          specifiedType: const FullType(bool)),
      'startDate',
      serializers.serialize(object.startDate,
          specifiedType: const FullType(DateTime)),
      'endDate',
      serializers.serialize(object.endDate,
          specifiedType: const FullType(DateTime)),
      'client',
      serializers.serialize(object.client,
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
  DietRoutineRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DietRoutineRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'isCurrent':
          result.isCurrent = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'startDate':
          result.startDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'endDate':
          result.endDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'client':
          result.client = serializers.deserialize(value,
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

class _$DietRoutineRecord extends DietRoutineRecord {
  @override
  final String name;
  @override
  final String description;
  @override
  final bool isCurrent;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
  @override
  final DocumentReference<Object> client;
  @override
  final DocumentReference<Object> reference;

  factory _$DietRoutineRecord(
          [void Function(DietRoutineRecordBuilder) updates]) =>
      (new DietRoutineRecordBuilder()..update(updates)).build();

  _$DietRoutineRecord._(
      {this.name,
      this.description,
      this.isCurrent,
      this.startDate,
      this.endDate,
      this.client,
      this.reference})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(name, 'DietRoutineRecord', 'name');
    BuiltValueNullFieldError.checkNotNull(
        description, 'DietRoutineRecord', 'description');
    BuiltValueNullFieldError.checkNotNull(
        isCurrent, 'DietRoutineRecord', 'isCurrent');
    BuiltValueNullFieldError.checkNotNull(
        startDate, 'DietRoutineRecord', 'startDate');
    BuiltValueNullFieldError.checkNotNull(
        endDate, 'DietRoutineRecord', 'endDate');
    BuiltValueNullFieldError.checkNotNull(
        client, 'DietRoutineRecord', 'client');
    BuiltValueNullFieldError.checkNotNull(
        reference, 'DietRoutineRecord', 'reference');
  }

  @override
  DietRoutineRecord rebuild(void Function(DietRoutineRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DietRoutineRecordBuilder toBuilder() =>
      new DietRoutineRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DietRoutineRecord &&
        name == other.name &&
        description == other.description &&
        isCurrent == other.isCurrent &&
        startDate == other.startDate &&
        endDate == other.endDate &&
        client == other.client &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, name.hashCode), description.hashCode),
                        isCurrent.hashCode),
                    startDate.hashCode),
                endDate.hashCode),
            client.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DietRoutineRecord')
          ..add('name', name)
          ..add('description', description)
          ..add('isCurrent', isCurrent)
          ..add('startDate', startDate)
          ..add('endDate', endDate)
          ..add('client', client)
          ..add('reference', reference))
        .toString();
  }
}

class DietRoutineRecordBuilder
    implements Builder<DietRoutineRecord, DietRoutineRecordBuilder> {
  _$DietRoutineRecord _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  bool _isCurrent;
  bool get isCurrent => _$this._isCurrent;
  set isCurrent(bool isCurrent) => _$this._isCurrent = isCurrent;

  DateTime _startDate;
  DateTime get startDate => _$this._startDate;
  set startDate(DateTime startDate) => _$this._startDate = startDate;

  DateTime _endDate;
  DateTime get endDate => _$this._endDate;
  set endDate(DateTime endDate) => _$this._endDate = endDate;

  DocumentReference<Object> _client;
  DocumentReference<Object> get client => _$this._client;
  set client(DocumentReference<Object> client) => _$this._client = client;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  DietRoutineRecordBuilder() {
    DietRoutineRecord._initializeBuilder(this);
  }

  DietRoutineRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _description = $v.description;
      _isCurrent = $v.isCurrent;
      _startDate = $v.startDate;
      _endDate = $v.endDate;
      _client = $v.client;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DietRoutineRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DietRoutineRecord;
  }

  @override
  void update(void Function(DietRoutineRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DietRoutineRecord build() {
    final _$result = _$v ??
        new _$DietRoutineRecord._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, 'DietRoutineRecord', 'name'),
            description: BuiltValueNullFieldError.checkNotNull(
                description, 'DietRoutineRecord', 'description'),
            isCurrent: BuiltValueNullFieldError.checkNotNull(
                isCurrent, 'DietRoutineRecord', 'isCurrent'),
            startDate: BuiltValueNullFieldError.checkNotNull(
                startDate, 'DietRoutineRecord', 'startDate'),
            endDate: BuiltValueNullFieldError.checkNotNull(
                endDate, 'DietRoutineRecord', 'endDate'),
            client: BuiltValueNullFieldError.checkNotNull(
                client, 'DietRoutineRecord', 'client'),
            reference: BuiltValueNullFieldError.checkNotNull(
                reference, 'DietRoutineRecord', 'reference'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
