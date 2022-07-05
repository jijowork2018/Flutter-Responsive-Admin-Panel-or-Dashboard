// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise_library_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ExerciseLibraryRecord> _$exerciseLibraryRecordSerializer =
    new _$ExerciseLibraryRecordSerializer();

class _$ExerciseLibraryRecordSerializer
    implements StructuredSerializer<ExerciseLibraryRecord> {
  @override
  final Iterable<Type> types = const [
    ExerciseLibraryRecord,
    _$ExerciseLibraryRecord
  ];
  @override
  final String wireName = 'ExerciseLibraryRecord';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ExerciseLibraryRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'muscleName',
      serializers.serialize(object.muscleName,
          specifiedType: const FullType(String)),
      'exerciseName',
      serializers.serialize(object.exerciseName,
          specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description,
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
  ExerciseLibraryRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ExerciseLibraryRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'muscleName':
          result.muscleName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'exerciseName':
          result.exerciseName = serializers.deserialize(value,
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

class _$ExerciseLibraryRecord extends ExerciseLibraryRecord {
  @override
  final String muscleName;
  @override
  final String exerciseName;
  @override
  final String description;
  @override
  final String image;
  @override
  final DocumentReference<Object> reference;

  factory _$ExerciseLibraryRecord(
          [void Function(ExerciseLibraryRecordBuilder) updates]) =>
      (new ExerciseLibraryRecordBuilder()..update(updates)).build();

  _$ExerciseLibraryRecord._(
      {this.muscleName,
      this.exerciseName,
      this.description,
      this.image,
      this.reference})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        muscleName, 'ExerciseLibraryRecord', 'muscleName');
    BuiltValueNullFieldError.checkNotNull(
        exerciseName, 'ExerciseLibraryRecord', 'exerciseName');
    BuiltValueNullFieldError.checkNotNull(
        description, 'ExerciseLibraryRecord', 'description');
    BuiltValueNullFieldError.checkNotNull(
        image, 'ExerciseLibraryRecord', 'image');
    BuiltValueNullFieldError.checkNotNull(
        reference, 'ExerciseLibraryRecord', 'reference');
  }

  @override
  ExerciseLibraryRecord rebuild(
          void Function(ExerciseLibraryRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExerciseLibraryRecordBuilder toBuilder() =>
      new ExerciseLibraryRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExerciseLibraryRecord &&
        muscleName == other.muscleName &&
        exerciseName == other.exerciseName &&
        description == other.description &&
        image == other.image &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, muscleName.hashCode), exerciseName.hashCode),
                description.hashCode),
            image.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ExerciseLibraryRecord')
          ..add('muscleName', muscleName)
          ..add('exerciseName', exerciseName)
          ..add('description', description)
          ..add('image', image)
          ..add('reference', reference))
        .toString();
  }
}

class ExerciseLibraryRecordBuilder
    implements Builder<ExerciseLibraryRecord, ExerciseLibraryRecordBuilder> {
  _$ExerciseLibraryRecord _$v;

  String _muscleName;
  String get muscleName => _$this._muscleName;
  set muscleName(String muscleName) => _$this._muscleName = muscleName;

  String _exerciseName;
  String get exerciseName => _$this._exerciseName;
  set exerciseName(String exerciseName) => _$this._exerciseName = exerciseName;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _image;
  String get image => _$this._image;
  set image(String image) => _$this._image = image;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  ExerciseLibraryRecordBuilder() {
    ExerciseLibraryRecord._initializeBuilder(this);
  }

  ExerciseLibraryRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _muscleName = $v.muscleName;
      _exerciseName = $v.exerciseName;
      _description = $v.description;
      _image = $v.image;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExerciseLibraryRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ExerciseLibraryRecord;
  }

  @override
  void update(void Function(ExerciseLibraryRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ExerciseLibraryRecord build() {
    final _$result = _$v ??
        new _$ExerciseLibraryRecord._(
            muscleName: BuiltValueNullFieldError.checkNotNull(
                muscleName, 'ExerciseLibraryRecord', 'muscleName'),
            exerciseName: BuiltValueNullFieldError.checkNotNull(
                exerciseName, 'ExerciseLibraryRecord', 'exerciseName'),
            description: BuiltValueNullFieldError.checkNotNull(
                description, 'ExerciseLibraryRecord', 'description'),
            image: BuiltValueNullFieldError.checkNotNull(
                image, 'ExerciseLibraryRecord', 'image'),
            reference: BuiltValueNullFieldError.checkNotNull(
                reference, 'ExerciseLibraryRecord', 'reference'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
