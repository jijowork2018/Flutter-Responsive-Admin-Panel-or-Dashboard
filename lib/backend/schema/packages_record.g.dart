// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'packages_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PackagesRecord> _$packagesRecordSerializer =
    new _$PackagesRecordSerializer();

class _$PackagesRecordSerializer
    implements StructuredSerializer<PackagesRecord> {
  @override
  final Iterable<Type> types = const [PackagesRecord, _$PackagesRecord];
  @override
  final String wireName = 'PackagesRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, PackagesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'packageName',
      serializers.serialize(object.packageName,
          specifiedType: const FullType(String)),
      'price',
      serializers.serialize(object.price,
          specifiedType: const FullType(double)),
      'clientNumber',
      serializers.serialize(object.clientNumber,
          specifiedType: const FullType(int)),
      'duration',
      serializers.serialize(object.duration,
          specifiedType: const FullType(double)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
      'Document__Reference__Field',
      serializers.serialize(object.reference,
          specifiedType: const FullType(
              DocumentReference, const [const FullType(Object)])),
    ];

    return result;
  }

  @override
  PackagesRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PackagesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'packageName':
          result.packageName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'clientNumber':
          result.clientNumber = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'duration':
          result.duration = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
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

class _$PackagesRecord extends PackagesRecord {
  @override
  final String packageName;
  @override
  final double price;
  @override
  final int clientNumber;
  @override
  final double duration;
  @override
  final String description;
  @override
  final DocumentReference<Object> reference;

  factory _$PackagesRecord([void Function(PackagesRecordBuilder) updates]) =>
      (new PackagesRecordBuilder()..update(updates)).build();

  _$PackagesRecord._(
      {this.packageName,
      this.price,
      this.clientNumber,
      this.duration,
      this.description,
      this.reference})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        packageName, 'PackagesRecord', 'packageName');
    BuiltValueNullFieldError.checkNotNull(price, 'PackagesRecord', 'price');
    BuiltValueNullFieldError.checkNotNull(
        clientNumber, 'PackagesRecord', 'clientNumber');
    BuiltValueNullFieldError.checkNotNull(
        duration, 'PackagesRecord', 'duration');
    BuiltValueNullFieldError.checkNotNull(
        description, 'PackagesRecord', 'description');
    BuiltValueNullFieldError.checkNotNull(
        reference, 'PackagesRecord', 'reference');
  }

  @override
  PackagesRecord rebuild(void Function(PackagesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PackagesRecordBuilder toBuilder() =>
      new PackagesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PackagesRecord &&
        packageName == other.packageName &&
        price == other.price &&
        clientNumber == other.clientNumber &&
        duration == other.duration &&
        description == other.description &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, packageName.hashCode), price.hashCode),
                    clientNumber.hashCode),
                duration.hashCode),
            description.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PackagesRecord')
          ..add('packageName', packageName)
          ..add('price', price)
          ..add('clientNumber', clientNumber)
          ..add('duration', duration)
          ..add('description', description)
          ..add('reference', reference))
        .toString();
  }
}

class PackagesRecordBuilder
    implements Builder<PackagesRecord, PackagesRecordBuilder> {
  _$PackagesRecord _$v;

  String _packageName;
  String get packageName => _$this._packageName;
  set packageName(String packageName) => _$this._packageName = packageName;

  double _price;
  double get price => _$this._price;
  set price(double price) => _$this._price = price;

  int _clientNumber;
  int get clientNumber => _$this._clientNumber;
  set clientNumber(int clientNumber) => _$this._clientNumber = clientNumber;

  double _duration;
  double get duration => _$this._duration;
  set duration(double duration) => _$this._duration = duration;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  PackagesRecordBuilder() {
    PackagesRecord._initializeBuilder(this);
  }

  PackagesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _packageName = $v.packageName;
      _price = $v.price;
      _clientNumber = $v.clientNumber;
      _duration = $v.duration;
      _description = $v.description;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PackagesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PackagesRecord;
  }

  @override
  void update(void Function(PackagesRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PackagesRecord build() {
    final _$result = _$v ??
        new _$PackagesRecord._(
            packageName: BuiltValueNullFieldError.checkNotNull(
                packageName, 'PackagesRecord', 'packageName'),
            price: BuiltValueNullFieldError.checkNotNull(
                price, 'PackagesRecord', 'price'),
            clientNumber: BuiltValueNullFieldError.checkNotNull(
                clientNumber, 'PackagesRecord', 'clientNumber'),
            duration: BuiltValueNullFieldError.checkNotNull(
                duration, 'PackagesRecord', 'duration'),
            description: BuiltValueNullFieldError.checkNotNull(
                description, 'PackagesRecord', 'description'),
            reference: BuiltValueNullFieldError.checkNotNull(
                reference, 'PackagesRecord', 'reference'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
