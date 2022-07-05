// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routines_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RoutinesRecord> _$routinesRecordSerializer =
    new _$RoutinesRecordSerializer();

class _$RoutinesRecordSerializer
    implements StructuredSerializer<RoutinesRecord> {
  @override
  final Iterable<Type> types = const [RoutinesRecord, _$RoutinesRecord];
  @override
  final String wireName = 'RoutinesRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, RoutinesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'routineName',
      serializers.serialize(object.routineName,
          specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
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
      'isCurrent',
      serializers.serialize(object.isCurrent,
          specifiedType: const FullType(bool)),
      'Document__Reference__Field',
      serializers.serialize(object.reference,
          specifiedType: const FullType(
              DocumentReference, const [const FullType(Object)])),
    ];

    return result;
  }

  @override
  RoutinesRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RoutinesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'routineName':
          result.routineName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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
        case 'isCurrent':
          result.isCurrent = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
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

class _$RoutinesRecord extends RoutinesRecord {
  @override
  final String routineName;
  @override
  final String description;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
  @override
  final DocumentReference<Object> client;
  @override
  final bool isCurrent;
  @override
  final DocumentReference<Object> reference;

  factory _$RoutinesRecord([void Function(RoutinesRecordBuilder) updates]) =>
      (new RoutinesRecordBuilder()..update(updates)).build();

  _$RoutinesRecord._(
      {this.routineName,
      this.description,
      this.startDate,
      this.endDate,
      this.client,
      this.isCurrent,
      this.reference})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        routineName, 'RoutinesRecord', 'routineName');
    BuiltValueNullFieldError.checkNotNull(
        description, 'RoutinesRecord', 'description');
    BuiltValueNullFieldError.checkNotNull(
        startDate, 'RoutinesRecord', 'startDate');
    BuiltValueNullFieldError.checkNotNull(endDate, 'RoutinesRecord', 'endDate');
    BuiltValueNullFieldError.checkNotNull(client, 'RoutinesRecord', 'client');
    BuiltValueNullFieldError.checkNotNull(
        isCurrent, 'RoutinesRecord', 'isCurrent');
    BuiltValueNullFieldError.checkNotNull(
        reference, 'RoutinesRecord', 'reference');
  }

  @override
  RoutinesRecord rebuild(void Function(RoutinesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RoutinesRecordBuilder toBuilder() =>
      new RoutinesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RoutinesRecord &&
        routineName == other.routineName &&
        description == other.description &&
        startDate == other.startDate &&
        endDate == other.endDate &&
        client == other.client &&
        isCurrent == other.isCurrent &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, routineName.hashCode), description.hashCode),
                        startDate.hashCode),
                    endDate.hashCode),
                client.hashCode),
            isCurrent.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RoutinesRecord')
          ..add('routineName', routineName)
          ..add('description', description)
          ..add('startDate', startDate)
          ..add('endDate', endDate)
          ..add('client', client)
          ..add('isCurrent', isCurrent)
          ..add('reference', reference))
        .toString();
  }
}

class RoutinesRecordBuilder
    implements Builder<RoutinesRecord, RoutinesRecordBuilder> {
  _$RoutinesRecord _$v;

  String _routineName;
  String get routineName => _$this._routineName;
  set routineName(String routineName) => _$this._routineName = routineName;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  DateTime _startDate;
  DateTime get startDate => _$this._startDate;
  set startDate(DateTime startDate) => _$this._startDate = startDate;

  DateTime _endDate;
  DateTime get endDate => _$this._endDate;
  set endDate(DateTime endDate) => _$this._endDate = endDate;

  DocumentReference<Object> _client;
  DocumentReference<Object> get client => _$this._client;
  set client(DocumentReference<Object> client) => _$this._client = client;

  bool _isCurrent;
  bool get isCurrent => _$this._isCurrent;
  set isCurrent(bool isCurrent) => _$this._isCurrent = isCurrent;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  RoutinesRecordBuilder() {
    RoutinesRecord._initializeBuilder(this);
  }

  RoutinesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _routineName = $v.routineName;
      _description = $v.description;
      _startDate = $v.startDate;
      _endDate = $v.endDate;
      _client = $v.client;
      _isCurrent = $v.isCurrent;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RoutinesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RoutinesRecord;
  }

  @override
  void update(void Function(RoutinesRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RoutinesRecord build() {
    final _$result = _$v ??
        new _$RoutinesRecord._(
            routineName: BuiltValueNullFieldError.checkNotNull(
                routineName, 'RoutinesRecord', 'routineName'),
            description: BuiltValueNullFieldError.checkNotNull(
                description, 'RoutinesRecord', 'description'),
            startDate: BuiltValueNullFieldError.checkNotNull(
                startDate, 'RoutinesRecord', 'startDate'),
            endDate: BuiltValueNullFieldError.checkNotNull(
                endDate, 'RoutinesRecord', 'endDate'),
            client: BuiltValueNullFieldError.checkNotNull(
                client, 'RoutinesRecord', 'client'),
            isCurrent: BuiltValueNullFieldError.checkNotNull(
                isCurrent, 'RoutinesRecord', 'isCurrent'),
            reference: BuiltValueNullFieldError.checkNotNull(
                reference, 'RoutinesRecord', 'reference'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
