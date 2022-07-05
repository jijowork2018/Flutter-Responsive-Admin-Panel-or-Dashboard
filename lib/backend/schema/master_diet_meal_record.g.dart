// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'master_diet_meal_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MasterDietMealRecord> _$masterDietMealRecordSerializer =
    new _$MasterDietMealRecordSerializer();

class _$MasterDietMealRecordSerializer
    implements StructuredSerializer<MasterDietMealRecord> {
  @override
  final Iterable<Type> types = const [
    MasterDietMealRecord,
    _$MasterDietMealRecord
  ];
  @override
  final String wireName = 'MasterDietMealRecord';

  @override
  Iterable<Object> serialize(
      Serializers serializers, MasterDietMealRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'masterDiet',
      serializers.serialize(object.masterDiet,
          specifiedType: const FullType(
              DocumentReference, const [const FullType(Object)])),
      'mealName',
      serializers.serialize(object.mealName,
          specifiedType: const FullType(String)),
      'image',
      serializers.serialize(object.image,
          specifiedType: const FullType(String)),
      'video',
      serializers.serialize(object.video,
          specifiedType: const FullType(String)),
      'foodName',
      serializers.serialize(object.foodName,
          specifiedType: const FullType(String)),
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
  MasterDietMealRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MasterDietMealRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'masterDiet':
          result.masterDiet = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'mealName':
          result.mealName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'video':
          result.video = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'foodName':
          result.foodName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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

class _$MasterDietMealRecord extends MasterDietMealRecord {
  @override
  final DocumentReference<Object> masterDiet;
  @override
  final String mealName;
  @override
  final String image;
  @override
  final String video;
  @override
  final String foodName;
  @override
  final String description;
  @override
  final DocumentReference<Object> reference;

  factory _$MasterDietMealRecord(
          [void Function(MasterDietMealRecordBuilder) updates]) =>
      (new MasterDietMealRecordBuilder()..update(updates)).build();

  _$MasterDietMealRecord._(
      {this.masterDiet,
      this.mealName,
      this.image,
      this.video,
      this.foodName,
      this.description,
      this.reference})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        masterDiet, 'MasterDietMealRecord', 'masterDiet');
    BuiltValueNullFieldError.checkNotNull(
        mealName, 'MasterDietMealRecord', 'mealName');
    BuiltValueNullFieldError.checkNotNull(
        image, 'MasterDietMealRecord', 'image');
    BuiltValueNullFieldError.checkNotNull(
        video, 'MasterDietMealRecord', 'video');
    BuiltValueNullFieldError.checkNotNull(
        foodName, 'MasterDietMealRecord', 'foodName');
    BuiltValueNullFieldError.checkNotNull(
        description, 'MasterDietMealRecord', 'description');
    BuiltValueNullFieldError.checkNotNull(
        reference, 'MasterDietMealRecord', 'reference');
  }

  @override
  MasterDietMealRecord rebuild(
          void Function(MasterDietMealRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MasterDietMealRecordBuilder toBuilder() =>
      new MasterDietMealRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MasterDietMealRecord &&
        masterDiet == other.masterDiet &&
        mealName == other.mealName &&
        image == other.image &&
        video == other.video &&
        foodName == other.foodName &&
        description == other.description &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, masterDiet.hashCode), mealName.hashCode),
                        image.hashCode),
                    video.hashCode),
                foodName.hashCode),
            description.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MasterDietMealRecord')
          ..add('masterDiet', masterDiet)
          ..add('mealName', mealName)
          ..add('image', image)
          ..add('video', video)
          ..add('foodName', foodName)
          ..add('description', description)
          ..add('reference', reference))
        .toString();
  }
}

class MasterDietMealRecordBuilder
    implements Builder<MasterDietMealRecord, MasterDietMealRecordBuilder> {
  _$MasterDietMealRecord _$v;

  DocumentReference<Object> _masterDiet;
  DocumentReference<Object> get masterDiet => _$this._masterDiet;
  set masterDiet(DocumentReference<Object> masterDiet) =>
      _$this._masterDiet = masterDiet;

  String _mealName;
  String get mealName => _$this._mealName;
  set mealName(String mealName) => _$this._mealName = mealName;

  String _image;
  String get image => _$this._image;
  set image(String image) => _$this._image = image;

  String _video;
  String get video => _$this._video;
  set video(String video) => _$this._video = video;

  String _foodName;
  String get foodName => _$this._foodName;
  set foodName(String foodName) => _$this._foodName = foodName;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  MasterDietMealRecordBuilder() {
    MasterDietMealRecord._initializeBuilder(this);
  }

  MasterDietMealRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _masterDiet = $v.masterDiet;
      _mealName = $v.mealName;
      _image = $v.image;
      _video = $v.video;
      _foodName = $v.foodName;
      _description = $v.description;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MasterDietMealRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MasterDietMealRecord;
  }

  @override
  void update(void Function(MasterDietMealRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MasterDietMealRecord build() {
    final _$result = _$v ??
        new _$MasterDietMealRecord._(
            masterDiet: BuiltValueNullFieldError.checkNotNull(
                masterDiet, 'MasterDietMealRecord', 'masterDiet'),
            mealName: BuiltValueNullFieldError.checkNotNull(
                mealName, 'MasterDietMealRecord', 'mealName'),
            image: BuiltValueNullFieldError.checkNotNull(
                image, 'MasterDietMealRecord', 'image'),
            video: BuiltValueNullFieldError.checkNotNull(
                video, 'MasterDietMealRecord', 'video'),
            foodName: BuiltValueNullFieldError.checkNotNull(
                foodName, 'MasterDietMealRecord', 'foodName'),
            description: BuiltValueNullFieldError.checkNotNull(
                description, 'MasterDietMealRecord', 'description'),
            reference: BuiltValueNullFieldError.checkNotNull(
                reference, 'MasterDietMealRecord', 'reference'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
