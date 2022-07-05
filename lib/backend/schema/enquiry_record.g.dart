// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enquiry_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<EnquiryRecord> _$enquiryRecordSerializer =
    new _$EnquiryRecordSerializer();

class _$EnquiryRecordSerializer implements StructuredSerializer<EnquiryRecord> {
  @override
  final Iterable<Type> types = const [EnquiryRecord, _$EnquiryRecord];
  @override
  final String wireName = 'EnquiryRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, EnquiryRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'mobile',
      serializers.serialize(object.mobile,
          specifiedType: const FullType(String)),
      'address',
      serializers.serialize(object.address,
          specifiedType: const FullType(String)),
      'remarks',
      serializers.serialize(object.remarks,
          specifiedType: const FullType(String)),
      'isClosed',
      serializers.serialize(object.isClosed,
          specifiedType: const FullType(bool)),
      'Document__Reference__Field',
      serializers.serialize(object.reference,
          specifiedType: const FullType(
              DocumentReference, const [const FullType(Object)])),
    ];

    return result;
  }

  @override
  EnquiryRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EnquiryRecordBuilder();

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
        case 'mobile':
          result.mobile = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'remarks':
          result.remarks = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'isClosed':
          result.isClosed = serializers.deserialize(value,
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

class _$EnquiryRecord extends EnquiryRecord {
  @override
  final String name;
  @override
  final String mobile;
  @override
  final String address;
  @override
  final String remarks;
  @override
  final bool isClosed;
  @override
  final DocumentReference<Object> reference;

  factory _$EnquiryRecord([void Function(EnquiryRecordBuilder) updates]) =>
      (new EnquiryRecordBuilder()..update(updates)).build();

  _$EnquiryRecord._(
      {this.name,
      this.mobile,
      this.address,
      this.remarks,
      this.isClosed,
      this.reference})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(name, 'EnquiryRecord', 'name');
    BuiltValueNullFieldError.checkNotNull(mobile, 'EnquiryRecord', 'mobile');
    BuiltValueNullFieldError.checkNotNull(address, 'EnquiryRecord', 'address');
    BuiltValueNullFieldError.checkNotNull(remarks, 'EnquiryRecord', 'remarks');
    BuiltValueNullFieldError.checkNotNull(
        isClosed, 'EnquiryRecord', 'isClosed');
    BuiltValueNullFieldError.checkNotNull(
        reference, 'EnquiryRecord', 'reference');
  }

  @override
  EnquiryRecord rebuild(void Function(EnquiryRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EnquiryRecordBuilder toBuilder() => new EnquiryRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EnquiryRecord &&
        name == other.name &&
        mobile == other.mobile &&
        address == other.address &&
        remarks == other.remarks &&
        isClosed == other.isClosed &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, name.hashCode), mobile.hashCode),
                    address.hashCode),
                remarks.hashCode),
            isClosed.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('EnquiryRecord')
          ..add('name', name)
          ..add('mobile', mobile)
          ..add('address', address)
          ..add('remarks', remarks)
          ..add('isClosed', isClosed)
          ..add('reference', reference))
        .toString();
  }
}

class EnquiryRecordBuilder
    implements Builder<EnquiryRecord, EnquiryRecordBuilder> {
  _$EnquiryRecord _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _mobile;
  String get mobile => _$this._mobile;
  set mobile(String mobile) => _$this._mobile = mobile;

  String _address;
  String get address => _$this._address;
  set address(String address) => _$this._address = address;

  String _remarks;
  String get remarks => _$this._remarks;
  set remarks(String remarks) => _$this._remarks = remarks;

  bool _isClosed;
  bool get isClosed => _$this._isClosed;
  set isClosed(bool isClosed) => _$this._isClosed = isClosed;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  EnquiryRecordBuilder() {
    EnquiryRecord._initializeBuilder(this);
  }

  EnquiryRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _mobile = $v.mobile;
      _address = $v.address;
      _remarks = $v.remarks;
      _isClosed = $v.isClosed;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EnquiryRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EnquiryRecord;
  }

  @override
  void update(void Function(EnquiryRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$EnquiryRecord build() {
    final _$result = _$v ??
        new _$EnquiryRecord._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, 'EnquiryRecord', 'name'),
            mobile: BuiltValueNullFieldError.checkNotNull(
                mobile, 'EnquiryRecord', 'mobile'),
            address: BuiltValueNullFieldError.checkNotNull(
                address, 'EnquiryRecord', 'address'),
            remarks: BuiltValueNullFieldError.checkNotNull(
                remarks, 'EnquiryRecord', 'remarks'),
            isClosed: BuiltValueNullFieldError.checkNotNull(
                isClosed, 'EnquiryRecord', 'isClosed'),
            reference: BuiltValueNullFieldError.checkNotNull(
                reference, 'EnquiryRecord', 'reference'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
