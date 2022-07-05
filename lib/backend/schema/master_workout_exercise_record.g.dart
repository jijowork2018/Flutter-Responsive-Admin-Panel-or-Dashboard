// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'master_workout_exercise_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MasterWorkoutExerciseRecord>
    _$masterWorkoutExerciseRecordSerializer =
    new _$MasterWorkoutExerciseRecordSerializer();

class _$MasterWorkoutExerciseRecordSerializer
    implements StructuredSerializer<MasterWorkoutExerciseRecord> {
  @override
  final Iterable<Type> types = const [
    MasterWorkoutExerciseRecord,
    _$MasterWorkoutExerciseRecord
  ];
  @override
  final String wireName = 'MasterWorkoutExerciseRecord';

  @override
  Iterable<Object> serialize(
      Serializers serializers, MasterWorkoutExerciseRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'masterWorkout',
      serializers.serialize(object.masterWorkout,
          specifiedType: const FullType(
              DocumentReference, const [const FullType(Object)])),
      'exerciseName',
      serializers.serialize(object.exerciseName,
          specifiedType: const FullType(String)),
      'image',
      serializers.serialize(object.image,
          specifiedType: const FullType(String)),
      'video',
      serializers.serialize(object.video,
          specifiedType: const FullType(String)),
      'muscle',
      serializers.serialize(object.muscle,
          specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
      'sets',
      serializers.serialize(object.sets, specifiedType: const FullType(String)),
      'reps',
      serializers.serialize(object.reps, specifiedType: const FullType(String)),
      'order',
      serializers.serialize(object.order, specifiedType: const FullType(int)),
      'Document__Reference__Field',
      serializers.serialize(object.reference,
          specifiedType: const FullType(
              DocumentReference, const [const FullType(Object)])),
    ];

    return result;
  }

  @override
  MasterWorkoutExerciseRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MasterWorkoutExerciseRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'masterWorkout':
          result.masterWorkout = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'exerciseName':
          result.exerciseName = serializers.deserialize(value,
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
        case 'muscle':
          result.muscle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'sets':
          result.sets = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'reps':
          result.reps = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'order':
          result.order = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
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

class _$MasterWorkoutExerciseRecord extends MasterWorkoutExerciseRecord {
  @override
  final DocumentReference<Object> masterWorkout;
  @override
  final String exerciseName;
  @override
  final String image;
  @override
  final String video;
  @override
  final String muscle;
  @override
  final String description;
  @override
  final String sets;
  @override
  final String reps;
  @override
  final int order;
  @override
  final DocumentReference<Object> reference;

  factory _$MasterWorkoutExerciseRecord(
          [void Function(MasterWorkoutExerciseRecordBuilder) updates]) =>
      (new MasterWorkoutExerciseRecordBuilder()..update(updates)).build();

  _$MasterWorkoutExerciseRecord._(
      {this.masterWorkout,
      this.exerciseName,
      this.image,
      this.video,
      this.muscle,
      this.description,
      this.sets,
      this.reps,
      this.order,
      this.reference})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        masterWorkout, 'MasterWorkoutExerciseRecord', 'masterWorkout');
    BuiltValueNullFieldError.checkNotNull(
        exerciseName, 'MasterWorkoutExerciseRecord', 'exerciseName');
    BuiltValueNullFieldError.checkNotNull(
        image, 'MasterWorkoutExerciseRecord', 'image');
    BuiltValueNullFieldError.checkNotNull(
        video, 'MasterWorkoutExerciseRecord', 'video');
    BuiltValueNullFieldError.checkNotNull(
        muscle, 'MasterWorkoutExerciseRecord', 'muscle');
    BuiltValueNullFieldError.checkNotNull(
        description, 'MasterWorkoutExerciseRecord', 'description');
    BuiltValueNullFieldError.checkNotNull(
        sets, 'MasterWorkoutExerciseRecord', 'sets');
    BuiltValueNullFieldError.checkNotNull(
        reps, 'MasterWorkoutExerciseRecord', 'reps');
    BuiltValueNullFieldError.checkNotNull(
        order, 'MasterWorkoutExerciseRecord', 'order');
    BuiltValueNullFieldError.checkNotNull(
        reference, 'MasterWorkoutExerciseRecord', 'reference');
  }

  @override
  MasterWorkoutExerciseRecord rebuild(
          void Function(MasterWorkoutExerciseRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MasterWorkoutExerciseRecordBuilder toBuilder() =>
      new MasterWorkoutExerciseRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MasterWorkoutExerciseRecord &&
        masterWorkout == other.masterWorkout &&
        exerciseName == other.exerciseName &&
        image == other.image &&
        video == other.video &&
        muscle == other.muscle &&
        description == other.description &&
        sets == other.sets &&
        reps == other.reps &&
        order == other.order &&
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
                                $jc(
                                    $jc($jc(0, masterWorkout.hashCode),
                                        exerciseName.hashCode),
                                    image.hashCode),
                                video.hashCode),
                            muscle.hashCode),
                        description.hashCode),
                    sets.hashCode),
                reps.hashCode),
            order.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MasterWorkoutExerciseRecord')
          ..add('masterWorkout', masterWorkout)
          ..add('exerciseName', exerciseName)
          ..add('image', image)
          ..add('video', video)
          ..add('muscle', muscle)
          ..add('description', description)
          ..add('sets', sets)
          ..add('reps', reps)
          ..add('order', order)
          ..add('reference', reference))
        .toString();
  }
}

class MasterWorkoutExerciseRecordBuilder
    implements
        Builder<MasterWorkoutExerciseRecord,
            MasterWorkoutExerciseRecordBuilder> {
  _$MasterWorkoutExerciseRecord _$v;

  DocumentReference<Object> _masterWorkout;
  DocumentReference<Object> get masterWorkout => _$this._masterWorkout;
  set masterWorkout(DocumentReference<Object> masterWorkout) =>
      _$this._masterWorkout = masterWorkout;

  String _exerciseName;
  String get exerciseName => _$this._exerciseName;
  set exerciseName(String exerciseName) => _$this._exerciseName = exerciseName;

  String _image;
  String get image => _$this._image;
  set image(String image) => _$this._image = image;

  String _video;
  String get video => _$this._video;
  set video(String video) => _$this._video = video;

  String _muscle;
  String get muscle => _$this._muscle;
  set muscle(String muscle) => _$this._muscle = muscle;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _sets;
  String get sets => _$this._sets;
  set sets(String sets) => _$this._sets = sets;

  String _reps;
  String get reps => _$this._reps;
  set reps(String reps) => _$this._reps = reps;

  int _order;
  int get order => _$this._order;
  set order(int order) => _$this._order = order;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  MasterWorkoutExerciseRecordBuilder() {
    MasterWorkoutExerciseRecord._initializeBuilder(this);
  }

  MasterWorkoutExerciseRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _masterWorkout = $v.masterWorkout;
      _exerciseName = $v.exerciseName;
      _image = $v.image;
      _video = $v.video;
      _muscle = $v.muscle;
      _description = $v.description;
      _sets = $v.sets;
      _reps = $v.reps;
      _order = $v.order;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MasterWorkoutExerciseRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MasterWorkoutExerciseRecord;
  }

  @override
  void update(void Function(MasterWorkoutExerciseRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MasterWorkoutExerciseRecord build() {
    final _$result = _$v ??
        new _$MasterWorkoutExerciseRecord._(
            masterWorkout: BuiltValueNullFieldError.checkNotNull(
                masterWorkout, 'MasterWorkoutExerciseRecord', 'masterWorkout'),
            exerciseName: BuiltValueNullFieldError.checkNotNull(
                exerciseName, 'MasterWorkoutExerciseRecord', 'exerciseName'),
            image: BuiltValueNullFieldError.checkNotNull(
                image, 'MasterWorkoutExerciseRecord', 'image'),
            video: BuiltValueNullFieldError.checkNotNull(
                video, 'MasterWorkoutExerciseRecord', 'video'),
            muscle: BuiltValueNullFieldError.checkNotNull(
                muscle, 'MasterWorkoutExerciseRecord', 'muscle'),
            description: BuiltValueNullFieldError.checkNotNull(
                description, 'MasterWorkoutExerciseRecord', 'description'),
            sets: BuiltValueNullFieldError.checkNotNull(
                sets, 'MasterWorkoutExerciseRecord', 'sets'),
            reps:
                BuiltValueNullFieldError.checkNotNull(reps, 'MasterWorkoutExerciseRecord', 'reps'),
            order: BuiltValueNullFieldError.checkNotNull(order, 'MasterWorkoutExerciseRecord', 'order'),
            reference: BuiltValueNullFieldError.checkNotNull(reference, 'MasterWorkoutExerciseRecord', 'reference'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new