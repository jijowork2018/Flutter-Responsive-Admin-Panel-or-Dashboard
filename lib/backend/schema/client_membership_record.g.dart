// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_membership_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ClientMembershipRecord> _$clientMembershipRecordSerializer =
    new _$ClientMembershipRecordSerializer();

class _$ClientMembershipRecordSerializer
    implements StructuredSerializer<ClientMembershipRecord> {
  @override
  final Iterable<Type> types = const [
    ClientMembershipRecord,
    _$ClientMembershipRecord
  ];
  @override
  final String wireName = 'ClientMembershipRecord';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ClientMembershipRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'package',
      serializers.serialize(object.package,
          specifiedType: const FullType(
              DocumentReference, const [const FullType(Object)])),
      'price',
      serializers.serialize(object.price,
          specifiedType: const FullType(double)),
      'duration',
      serializers.serialize(object.duration,
          specifiedType: const FullType(int)),
      'startDate',
      serializers.serialize(object.startDate,
          specifiedType: const FullType(DateTime)),
      'endDate',
      serializers.serialize(object.endDate,
          specifiedType: const FullType(DateTime)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
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
  ClientMembershipRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ClientMembershipRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'package':
          result.package = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'duration':
          result.duration = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'startDate':
          result.startDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'endDate':
          result.endDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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

class _$ClientMembershipRecord extends ClientMembershipRecord {
  @override
  final DocumentReference<Object> package;
  @override
  final double price;
  @override
  final int duration;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
  @override
  final String description;
  @override
  final DocumentReference<Object> client;
  @override
  final DocumentReference<Object> reference;

  factory _$ClientMembershipRecord(
          [void Function(ClientMembershipRecordBuilder) updates]) =>
      (new ClientMembershipRecordBuilder()..update(updates)).build();

  _$ClientMembershipRecord._(
      {this.package,
      this.price,
      this.duration,
      this.startDate,
      this.endDate,
      this.description,
      this.client,
      this.reference})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        package, 'ClientMembershipRecord', 'package');
    BuiltValueNullFieldError.checkNotNull(
        price, 'ClientMembershipRecord', 'price');
    BuiltValueNullFieldError.checkNotNull(
        duration, 'ClientMembershipRecord', 'duration');
    BuiltValueNullFieldError.checkNotNull(
        startDate, 'ClientMembershipRecord', 'startDate');
    BuiltValueNullFieldError.checkNotNull(
        endDate, 'ClientMembershipRecord', 'endDate');
    BuiltValueNullFieldError.checkNotNull(
        description, 'ClientMembershipRecord', 'description');
    BuiltValueNullFieldError.checkNotNull(
        client, 'ClientMembershipRecord', 'client');
    BuiltValueNullFieldError.checkNotNull(
        reference, 'ClientMembershipRecord', 'reference');
  }

  @override
  ClientMembershipRecord rebuild(
          void Function(ClientMembershipRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClientMembershipRecordBuilder toBuilder() =>
      new ClientMembershipRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClientMembershipRecord &&
        package == other.package &&
        price == other.price &&
        duration == other.duration &&
        startDate == other.startDate &&
        endDate == other.endDate &&
        description == other.description &&
        client == other.client &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, package.hashCode), price.hashCode),
                            duration.hashCode),
                        startDate.hashCode),
                    endDate.hashCode),
                description.hashCode),
            client.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ClientMembershipRecord')
          ..add('package', package)
          ..add('price', price)
          ..add('duration', duration)
          ..add('startDate', startDate)
          ..add('endDate', endDate)
          ..add('description', description)
          ..add('client', client)
          ..add('reference', reference))
        .toString();
  }
}

class ClientMembershipRecordBuilder
    implements Builder<ClientMembershipRecord, ClientMembershipRecordBuilder> {
  _$ClientMembershipRecord _$v;

  DocumentReference<Object> _package;
  DocumentReference<Object> get package => _$this._package;
  set package(DocumentReference<Object> package) => _$this._package = package;

  double _price;
  double get price => _$this._price;
  set price(double price) => _$this._price = price;

  int _duration;
  int get duration => _$this._duration;
  set duration(int duration) => _$this._duration = duration;

  DateTime _startDate;
  DateTime get startDate => _$this._startDate;
  set startDate(DateTime startDate) => _$this._startDate = startDate;

  DateTime _endDate;
  DateTime get endDate => _$this._endDate;
  set endDate(DateTime endDate) => _$this._endDate = endDate;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  DocumentReference<Object> _client;
  DocumentReference<Object> get client => _$this._client;
  set client(DocumentReference<Object> client) => _$this._client = client;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  ClientMembershipRecordBuilder() {
    ClientMembershipRecord._initializeBuilder(this);
  }

  ClientMembershipRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _package = $v.package;
      _price = $v.price;
      _duration = $v.duration;
      _startDate = $v.startDate;
      _endDate = $v.endDate;
      _description = $v.description;
      _client = $v.client;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ClientMembershipRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ClientMembershipRecord;
  }

  @override
  void update(void Function(ClientMembershipRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ClientMembershipRecord build() {
    final _$result = _$v ??
        new _$ClientMembershipRecord._(
            package: BuiltValueNullFieldError.checkNotNull(
                package, 'ClientMembershipRecord', 'package'),
            price: BuiltValueNullFieldError.checkNotNull(
                price, 'ClientMembershipRecord', 'price'),
            duration: BuiltValueNullFieldError.checkNotNull(
                duration, 'ClientMembershipRecord', 'duration'),
            startDate: BuiltValueNullFieldError.checkNotNull(
                startDate, 'ClientMembershipRecord', 'startDate'),
            endDate: BuiltValueNullFieldError.checkNotNull(
                endDate, 'ClientMembershipRecord', 'endDate'),
            description: BuiltValueNullFieldError.checkNotNull(
                description, 'ClientMembershipRecord', 'description'),
            client: BuiltValueNullFieldError.checkNotNull(
                client, 'ClientMembershipRecord', 'client'),
            reference: BuiltValueNullFieldError.checkNotNull(
                reference, 'ClientMembershipRecord', 'reference'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
