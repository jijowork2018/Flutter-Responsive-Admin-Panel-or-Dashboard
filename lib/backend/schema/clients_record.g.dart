// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clients_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ClientsRecord> _$clientsRecordSerializer =
    new _$ClientsRecordSerializer();

class _$ClientsRecordSerializer implements StructuredSerializer<ClientsRecord> {
  @override
  final Iterable<Type> types = const [ClientsRecord, _$ClientsRecord];
  @override
  final String wireName = 'ClientsRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, ClientsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'Document__Reference__Field',
      serializers.serialize(object.reference,
          specifiedType: const FullType(
              DocumentReference, const [const FullType(Object)])),
    ];
    Object value;
    value = object.dateOfBirth;
    if (value != null) {
      result
        ..add('dateOfBirth')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.yearsExperience;
    if (value != null) {
      result
        ..add('yearsExperience')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.address;
    if (value != null) {
      result
        ..add('address')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.gender;
    if (value != null) {
      result
        ..add('gender')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.trainer;
    if (value != null) {
      result
        ..add('trainer')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ClientsRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ClientsRecordBuilder();

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
        case 'dateOfBirth':
          result.dateOfBirth = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'yearsExperience':
          result.yearsExperience = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'gender':
          result.gender = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'user':
          result.user = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'trainer':
          result.trainer = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
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

class _$ClientsRecord extends ClientsRecord {
  @override
  final String name;
  @override
  final DateTime dateOfBirth;
  @override
  final double yearsExperience;
  @override
  final String address;
  @override
  final String gender;
  @override
  final DocumentReference<Object> user;
  @override
  final DocumentReference<Object> trainer;
  @override
  final String image;
  @override
  final DocumentReference<Object> reference;

  factory _$ClientsRecord([void Function(ClientsRecordBuilder) updates]) =>
      (new ClientsRecordBuilder()..update(updates)).build();

  _$ClientsRecord._(
      {this.name,
      this.dateOfBirth,
      this.yearsExperience,
      this.address,
      this.gender,
      this.user,
      this.trainer,
      this.image,
      this.reference})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(name, 'ClientsRecord', 'name');
    BuiltValueNullFieldError.checkNotNull(
        reference, 'ClientsRecord', 'reference');
  }

  @override
  ClientsRecord rebuild(void Function(ClientsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClientsRecordBuilder toBuilder() => new ClientsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClientsRecord &&
        name == other.name &&
        dateOfBirth == other.dateOfBirth &&
        yearsExperience == other.yearsExperience &&
        address == other.address &&
        gender == other.gender &&
        user == other.user &&
        trainer == other.trainer &&
        image == other.image &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc($jc(0, name.hashCode),
                                    dateOfBirth.hashCode),
                                yearsExperience.hashCode),
                            address.hashCode),
                        gender.hashCode),
                    user.hashCode),
                trainer.hashCode),
            image.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ClientsRecord')
          ..add('name', name)
          ..add('dateOfBirth', dateOfBirth)
          ..add('yearsExperience', yearsExperience)
          ..add('address', address)
          ..add('gender', gender)
          ..add('user', user)
          ..add('trainer', trainer)
          ..add('image', image)
          ..add('reference', reference))
        .toString();
  }
}

class ClientsRecordBuilder
    implements Builder<ClientsRecord, ClientsRecordBuilder> {
  _$ClientsRecord _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  DateTime _dateOfBirth;
  DateTime get dateOfBirth => _$this._dateOfBirth;
  set dateOfBirth(DateTime dateOfBirth) => _$this._dateOfBirth = dateOfBirth;

  double _yearsExperience;
  double get yearsExperience => _$this._yearsExperience;
  set yearsExperience(double yearsExperience) =>
      _$this._yearsExperience = yearsExperience;

  String _address;
  String get address => _$this._address;
  set address(String address) => _$this._address = address;

  String _gender;
  String get gender => _$this._gender;
  set gender(String gender) => _$this._gender = gender;

  DocumentReference<Object> _user;
  DocumentReference<Object> get user => _$this._user;
  set user(DocumentReference<Object> user) => _$this._user = user;

  DocumentReference<Object> _trainer;
  DocumentReference<Object> get trainer => _$this._trainer;
  set trainer(DocumentReference<Object> trainer) => _$this._trainer = trainer;

  String _image;
  String get image => _$this._image;
  set image(String image) => _$this._image = image;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  ClientsRecordBuilder() {
    ClientsRecord._initializeBuilder(this);
  }

  ClientsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _dateOfBirth = $v.dateOfBirth;
      _yearsExperience = $v.yearsExperience;
      _address = $v.address;
      _gender = $v.gender;
      _user = $v.user;
      _trainer = $v.trainer;
      _image = $v.image;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ClientsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ClientsRecord;
  }

  @override
  void update(void Function(ClientsRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ClientsRecord build() {
    final _$result = _$v ??
        new _$ClientsRecord._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, 'ClientsRecord', 'name'),
            dateOfBirth: dateOfBirth,
            yearsExperience: yearsExperience,
            address: address,
            gender: gender,
            user: user,
            trainer: trainer,
            image: image,
            reference: BuiltValueNullFieldError.checkNotNull(
                reference, 'ClientsRecord', 'reference'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
