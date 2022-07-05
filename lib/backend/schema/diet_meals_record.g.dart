// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'diet_meals_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DietMealsRecord> _$dietMealsRecordSerializer =
    new _$DietMealsRecordSerializer();

class _$DietMealsRecordSerializer
    implements StructuredSerializer<DietMealsRecord> {
  @override
  final Iterable<Type> types = const [DietMealsRecord, _$DietMealsRecord];
  @override
  final String wireName = 'DietMealsRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, DietMealsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'mealName',
      serializers.serialize(object.mealName,
          specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
      'image',
      serializers.serialize(object.image,
          specifiedType: const FullType(String)),
      'video',
      serializers.serialize(object.video,
          specifiedType: const FullType(String)),
      'dietRoutine',
      serializers.serialize(object.dietRoutine,
          specifiedType: const FullType(
              DocumentReference, const [const FullType(Object)])),
      'foodName',
      serializers.serialize(object.foodName,
          specifiedType: const FullType(String)),
      'Document__Reference__Field',
      serializers.serialize(object.reference,
          specifiedType: const FullType(
              DocumentReference, const [const FullType(Object)])),
    ];

    return result;
  }

  @override
  DietMealsRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DietMealsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'mealName':
          result.mealName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
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
        case 'dietRoutine':
          result.dietRoutine = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'foodName':
          result.foodName = serializers.deserialize(value,
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

class _$DietMealsRecord extends DietMealsRecord {
  @override
  final String mealName;
  @override
  final String description;
  @override
  final String image;
  @override
  final String video;
  @override
  final DocumentReference<Object> dietRoutine;
  @override
  final String foodName;
  @override
  final DocumentReference<Object> reference;

  factory _$DietMealsRecord([void Function(DietMealsRecordBuilder) updates]) =>
      (new DietMealsRecordBuilder()..update(updates)).build();

  _$DietMealsRecord._(
      {this.mealName,
      this.description,
      this.image,
      this.video,
      this.dietRoutine,
      this.foodName,
      this.reference})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        mealName, 'DietMealsRecord', 'mealName');
    BuiltValueNullFieldError.checkNotNull(
        description, 'DietMealsRecord', 'description');
    BuiltValueNullFieldError.checkNotNull(image, 'DietMealsRecord', 'image');
    BuiltValueNullFieldError.checkNotNull(video, 'DietMealsRecord', 'video');
    BuiltValueNullFieldError.checkNotNull(
        dietRoutine, 'DietMealsRecord', 'dietRoutine');
    BuiltValueNullFieldError.checkNotNull(
        foodName, 'DietMealsRecord', 'foodName');
    BuiltValueNullFieldError.checkNotNull(
        reference, 'DietMealsRecord', 'reference');
  }

  @override
  DietMealsRecord rebuild(void Function(DietMealsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DietMealsRecordBuilder toBuilder() =>
      new DietMealsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DietMealsRecord &&
        mealName == other.mealName &&
        description == other.description &&
        image == other.image &&
        video == other.video &&
        dietRoutine == other.dietRoutine &&
        foodName == other.foodName &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, mealName.hashCode), description.hashCode),
                        image.hashCode),
                    video.hashCode),
                dietRoutine.hashCode),
            foodName.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DietMealsRecord')
          ..add('mealName', mealName)
          ..add('description', description)
          ..add('image', image)
          ..add('video', video)
          ..add('dietRoutine', dietRoutine)
          ..add('foodName', foodName)
          ..add('reference', reference))
        .toString();
  }
}

class DietMealsRecordBuilder
    implements Builder<DietMealsRecord, DietMealsRecordBuilder> {
  _$DietMealsRecord _$v;

  String _mealName;
  String get mealName => _$this._mealName;
  set mealName(String mealName) => _$this._mealName = mealName;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _image;
  String get image => _$this._image;
  set image(String image) => _$this._image = image;

  String _video;
  String get video => _$this._video;
  set video(String video) => _$this._video = video;

  DocumentReference<Object> _dietRoutine;
  DocumentReference<Object> get dietRoutine => _$this._dietRoutine;
  set dietRoutine(DocumentReference<Object> dietRoutine) =>
      _$this._dietRoutine = dietRoutine;

  String _foodName;
  String get foodName => _$this._foodName;
  set foodName(String foodName) => _$this._foodName = foodName;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  DietMealsRecordBuilder() {
    DietMealsRecord._initializeBuilder(this);
  }

  DietMealsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _mealName = $v.mealName;
      _description = $v.description;
      _image = $v.image;
      _video = $v.video;
      _dietRoutine = $v.dietRoutine;
      _foodName = $v.foodName;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DietMealsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DietMealsRecord;
  }

  @override
  void update(void Function(DietMealsRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DietMealsRecord build() {
    final _$result = _$v ??
        new _$DietMealsRecord._(
            mealName: BuiltValueNullFieldError.checkNotNull(
                mealName, 'DietMealsRecord', 'mealName'),
            description: BuiltValueNullFieldError.checkNotNull(
                description, 'DietMealsRecord', 'description'),
            image: BuiltValueNullFieldError.checkNotNull(
                image, 'DietMealsRecord', 'image'),
            video: BuiltValueNullFieldError.checkNotNull(
                video, 'DietMealsRecord', 'video'),
            dietRoutine: BuiltValueNullFieldError.checkNotNull(
                dietRoutine, 'DietMealsRecord', 'dietRoutine'),
            foodName: BuiltValueNullFieldError.checkNotNull(
                foodName, 'DietMealsRecord', 'foodName'),
            reference: BuiltValueNullFieldError.checkNotNull(
                reference, 'DietMealsRecord', 'reference'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
