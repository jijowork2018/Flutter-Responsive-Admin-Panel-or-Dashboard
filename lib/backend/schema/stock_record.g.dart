// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<StockRecord> _$stockRecordSerializer = new _$StockRecordSerializer();

class _$StockRecordSerializer implements StructuredSerializer<StockRecord> {
  @override
  final Iterable<Type> types = const [StockRecord, _$StockRecord];
  @override
  final String wireName = 'StockRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, StockRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'category',
      serializers.serialize(object.category,
          specifiedType: const FullType(String)),
      'quantity',
      serializers.serialize(object.quantity,
          specifiedType: const FullType(int)),
      'remarks',
      serializers.serialize(object.remarks,
          specifiedType: const FullType(String)),
      'imageUrl',
      serializers.serialize(object.imageUrl,
          specifiedType: const FullType(String)),
      'Document__Reference__Field',
      serializers.serialize(object.reference,
          specifiedType: const FullType(
              DocumentReference, const [const FullType(Object)])),
    ];

    return result;
  }

  @override
  StockRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new StockRecordBuilder();

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
        case 'category':
          result.category = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'quantity':
          result.quantity = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'remarks':
          result.remarks = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'imageUrl':
          result.imageUrl = serializers.deserialize(value,
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

class _$StockRecord extends StockRecord {
  @override
  final String name;
  @override
  final String category;
  @override
  final int quantity;
  @override
  final String remarks;
  @override
  final String imageUrl;
  @override
  final DocumentReference<Object> reference;

  factory _$StockRecord([void Function(StockRecordBuilder) updates]) =>
      (new StockRecordBuilder()..update(updates)).build();

  _$StockRecord._(
      {this.name,
      this.category,
      this.quantity,
      this.remarks,
      this.imageUrl,
      this.reference})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(name, 'StockRecord', 'name');
    BuiltValueNullFieldError.checkNotNull(category, 'StockRecord', 'category');
    BuiltValueNullFieldError.checkNotNull(quantity, 'StockRecord', 'quantity');
    BuiltValueNullFieldError.checkNotNull(remarks, 'StockRecord', 'remarks');
    BuiltValueNullFieldError.checkNotNull(imageUrl, 'StockRecord', 'imageUrl');
    BuiltValueNullFieldError.checkNotNull(
        reference, 'StockRecord', 'reference');
  }

  @override
  StockRecord rebuild(void Function(StockRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StockRecordBuilder toBuilder() => new StockRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StockRecord &&
        name == other.name &&
        category == other.category &&
        quantity == other.quantity &&
        remarks == other.remarks &&
        imageUrl == other.imageUrl &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, name.hashCode), category.hashCode),
                    quantity.hashCode),
                remarks.hashCode),
            imageUrl.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('StockRecord')
          ..add('name', name)
          ..add('category', category)
          ..add('quantity', quantity)
          ..add('remarks', remarks)
          ..add('imageUrl', imageUrl)
          ..add('reference', reference))
        .toString();
  }
}

class StockRecordBuilder implements Builder<StockRecord, StockRecordBuilder> {
  _$StockRecord _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _category;
  String get category => _$this._category;
  set category(String category) => _$this._category = category;

  int _quantity;
  int get quantity => _$this._quantity;
  set quantity(int quantity) => _$this._quantity = quantity;

  String _remarks;
  String get remarks => _$this._remarks;
  set remarks(String remarks) => _$this._remarks = remarks;

  String _imageUrl;
  String get imageUrl => _$this._imageUrl;
  set imageUrl(String imageUrl) => _$this._imageUrl = imageUrl;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  StockRecordBuilder() {
    StockRecord._initializeBuilder(this);
  }

  StockRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _category = $v.category;
      _quantity = $v.quantity;
      _remarks = $v.remarks;
      _imageUrl = $v.imageUrl;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StockRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StockRecord;
  }

  @override
  void update(void Function(StockRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$StockRecord build() {
    final _$result = _$v ??
        new _$StockRecord._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, 'StockRecord', 'name'),
            category: BuiltValueNullFieldError.checkNotNull(
                category, 'StockRecord', 'category'),
            quantity: BuiltValueNullFieldError.checkNotNull(
                quantity, 'StockRecord', 'quantity'),
            remarks: BuiltValueNullFieldError.checkNotNull(
                remarks, 'StockRecord', 'remarks'),
            imageUrl: BuiltValueNullFieldError.checkNotNull(
                imageUrl, 'StockRecord', 'imageUrl'),
            reference: BuiltValueNullFieldError.checkNotNull(
                reference, 'StockRecord', 'reference'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
