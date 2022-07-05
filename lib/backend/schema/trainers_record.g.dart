// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trainers_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TrainersRecord> _$trainersRecordSerializer =
    new _$TrainersRecordSerializer();

class _$TrainersRecordSerializer
    implements StructuredSerializer<TrainersRecord> {
  @override
  final Iterable<Type> types = const [TrainersRecord, _$TrainersRecord];
  @override
  final String wireName = 'TrainersRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, TrainersRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'dateOfBirth',
      serializers.serialize(object.dateOfBirth,
          specifiedType: const FullType(DateTime)),
      'yearsExperience',
      serializers.serialize(object.yearsExperience,
          specifiedType: const FullType(double)),
      'user',
      serializers.serialize(object.user,
          specifiedType: const FullType(
              DocumentReference, const [const FullType(Object)])),
      'address',
      serializers.serialize(object.address,
          specifiedType: const FullType(String)),
      'gender',
      serializers.serialize(object.gender,
          specifiedType: const FullType(String)),
      'image',
      serializers.serialize(object.image,
          specifiedType: const FullType(String)),
      'Document__Reference__Field',
      serializers.serialize(object.reference,
          specifiedType: const FullType(
              DocumentReference, const [const FullType(Object)])),
    ];

    return result;
  }

  @override
  TrainersRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TrainersRecordBuilder();

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
        case 'user':
          result.user = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'gender':
          result.gender = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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

class _$TrainersRecord extends TrainersRecord {
  @override
  final String name;
  @override
  final DateTime dateOfBirth;
  @override
  final double yearsExperience;
  @override
  final DocumentReference<Object> user;
  @override
  final String address;
  @override
  final String gender;
  @override
  final String image;
  @override
  final DocumentReference<Object> reference;

  factory _$TrainersRecord([void Function(TrainersRecordBuilder) updates]) =>
      (new TrainersRecordBuilder()..update(updates)).build();

  _$TrainersRecord._(
      {this.name,
      this.dateOfBirth,
      this.yearsExperience,
      this.user,
      this.address,
      this.gender,
      this.image,
      this.reference})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(name, 'TrainersRecord', 'name');
    BuiltValueNullFieldError.checkNotNull(
        dateOfBirth, 'TrainersRecord', 'dateOfBirth');
    BuiltValueNullFieldError.checkNotNull(
        yearsExperience, 'TrainersRecord', 'yearsExperience');
    BuiltValueNullFieldError.checkNotNull(user, 'TrainersRecord', 'user');
    BuiltValueNullFieldError.checkNotNull(address, 'TrainersRecord', 'address');
    BuiltValueNullFieldError.checkNotNull(gender, 'TrainersRecord', 'gender');
    BuiltValueNullFieldError.checkNotNull(image, 'TrainersRecord', 'image');
    BuiltValueNullFieldError.checkNotNull(
        reference, 'TrainersRecord', 'reference');
  }

  @override
  TrainersRecord rebuild(void Function(TrainersRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TrainersRecordBuilder toBuilder() =>
      new TrainersRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TrainersRecord &&
        name == other.name &&
        dateOfBirth == other.dateOfBirth &&
        yearsExperience == other.yearsExperience &&
        user == other.user &&
        address == other.address &&
        gender == other.gender &&
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
                        $jc($jc($jc(0, name.hashCode), dateOfBirth.hashCode),
                            yearsExperience.hashCode),
                        user.hashCode),
                    address.hashCode),
                gender.hashCode),
            image.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TrainersRecord')
          ..add('name', name)
          ..add('dateOfBirth', dateOfBirth)
          ..add('yearsExperience', yearsExperience)
          ..add('user', user)
          ..add('address', address)
          ..add('gender', gender)
          ..add('image', image)
          ..add('reference', reference))
        .toString();
  }
}

class TrainersRecordBuilder
    implements Builder<TrainersRecord, TrainersRecordBuilder> {
  _$TrainersRecord _$v;

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

  DocumentReference<Object> _user;
  DocumentReference<Object> get user => _$this._user;
  set user(DocumentReference<Object> user) => _$this._user = user;

  String _address;
  String get address => _$this._address;
  set address(String address) => _$this._address = address;

  String _gender;
  String get gender => _$this._gender;
  set gender(String gender) => _$this._gender = gender;

  String _image;
  String get image => _$this._image;
  set image(String image) => _$this._image = image;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  TrainersRecordBuilder() {
    TrainersRecord._initializeBuilder(this);
  }

  TrainersRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _dateOfBirth = $v.dateOfBirth;
      _yearsExperience = $v.yearsExperience;
      _user = $v.user;
      _address = $v.address;
      _gender = $v.gender;
      _image = $v.image;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TrainersRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TrainersRecord;
  }

  @override
  void update(void Function(TrainersRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TrainersRecord build() {
    final _$result = _$v ??
        new _$TrainersRecord._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, 'TrainersRecord', 'name'),
            dateOfBirth: BuiltValueNullFieldError.checkNotNull(
                dateOfBirth, 'TrainersRecord', 'dateOfBirth'),
            yearsExperience: BuiltValueNullFieldError.checkNotNull(
                yearsExperience, 'TrainersRecord', 'yearsExperience'),
            user: BuiltValueNullFieldError.checkNotNull(
                user, 'TrainersRecord', 'user'),
            address: BuiltValueNullFieldError.checkNotNull(
                address, 'TrainersRecord', 'address'),
            gender: BuiltValueNullFieldError.checkNotNull(
                gender, 'TrainersRecord', 'gender'),
            image: BuiltValueNullFieldError.checkNotNull(
                image, 'TrainersRecord', 'image'),
            reference: BuiltValueNullFieldError.checkNotNull(
                reference, 'TrainersRecord', 'reference'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
