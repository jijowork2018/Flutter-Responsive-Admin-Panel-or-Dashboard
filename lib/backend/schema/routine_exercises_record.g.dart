// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routine_exercises_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RoutineExercisesRecord> _$routineExercisesRecordSerializer =
    new _$RoutineExercisesRecordSerializer();

class _$RoutineExercisesRecordSerializer
    implements StructuredSerializer<RoutineExercisesRecord> {
  @override
  final Iterable<Type> types = const [
    RoutineExercisesRecord,
    _$RoutineExercisesRecord
  ];
  @override
  final String wireName = 'RoutineExercisesRecord';

  @override
  Iterable<Object> serialize(
      Serializers serializers, RoutineExercisesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
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
      'routine',
      serializers.serialize(object.routine,
          specifiedType: const FullType(
              DocumentReference, const [const FullType(Object)])),
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
  RoutineExercisesRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RoutineExercisesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
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
        case 'routine':
          result.routine = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
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

class _$RoutineExercisesRecord extends RoutineExercisesRecord {
  @override
  final String exerciseName;
  @override
  final String image;
  @override
  final String video;
  @override
  final String muscle;
  @override
  final DocumentReference<Object> routine;
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

  factory _$RoutineExercisesRecord(
          [void Function(RoutineExercisesRecordBuilder) updates]) =>
      (new RoutineExercisesRecordBuilder()..update(updates)).build();

  _$RoutineExercisesRecord._(
      {this.exerciseName,
      this.image,
      this.video,
      this.muscle,
      this.routine,
      this.description,
      this.sets,
      this.reps,
      this.order,
      this.reference})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        exerciseName, 'RoutineExercisesRecord', 'exerciseName');
    BuiltValueNullFieldError.checkNotNull(
        image, 'RoutineExercisesRecord', 'image');
    BuiltValueNullFieldError.checkNotNull(
        video, 'RoutineExercisesRecord', 'video');
    BuiltValueNullFieldError.checkNotNull(
        muscle, 'RoutineExercisesRecord', 'muscle');
    BuiltValueNullFieldError.checkNotNull(
        routine, 'RoutineExercisesRecord', 'routine');
    BuiltValueNullFieldError.checkNotNull(
        description, 'RoutineExercisesRecord', 'description');
    BuiltValueNullFieldError.checkNotNull(
        sets, 'RoutineExercisesRecord', 'sets');
    BuiltValueNullFieldError.checkNotNull(
        reps, 'RoutineExercisesRecord', 'reps');
    BuiltValueNullFieldError.checkNotNull(
        order, 'RoutineExercisesRecord', 'order');
    BuiltValueNullFieldError.checkNotNull(
        reference, 'RoutineExercisesRecord', 'reference');
  }

  @override
  RoutineExercisesRecord rebuild(
          void Function(RoutineExercisesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RoutineExercisesRecordBuilder toBuilder() =>
      new RoutineExercisesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RoutineExercisesRecord &&
        exerciseName == other.exerciseName &&
        image == other.image &&
        video == other.video &&
        muscle == other.muscle &&
        routine == other.routine &&
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
                                    $jc($jc(0, exerciseName.hashCode),
                                        image.hashCode),
                                    video.hashCode),
                                muscle.hashCode),
                            routine.hashCode),
                        description.hashCode),
                    sets.hashCode),
                reps.hashCode),
            order.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RoutineExercisesRecord')
          ..add('exerciseName', exerciseName)
          ..add('image', image)
          ..add('video', video)
          ..add('muscle', muscle)
          ..add('routine', routine)
          ..add('description', description)
          ..add('sets', sets)
          ..add('reps', reps)
          ..add('order', order)
          ..add('reference', reference))
        .toString();
  }
}

class RoutineExercisesRecordBuilder
    implements Builder<RoutineExercisesRecord, RoutineExercisesRecordBuilder> {
  _$RoutineExercisesRecord _$v;

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

  DocumentReference<Object> _routine;
  DocumentReference<Object> get routine => _$this._routine;
  set routine(DocumentReference<Object> routine) => _$this._routine = routine;

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

  RoutineExercisesRecordBuilder() {
    RoutineExercisesRecord._initializeBuilder(this);
  }

  RoutineExercisesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _exerciseName = $v.exerciseName;
      _image = $v.image;
      _video = $v.video;
      _muscle = $v.muscle;
      _routine = $v.routine;
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
  void replace(RoutineExercisesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RoutineExercisesRecord;
  }

  @override
  void update(void Function(RoutineExercisesRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RoutineExercisesRecord build() {
    final _$result = _$v ??
        new _$RoutineExercisesRecord._(
            exerciseName: BuiltValueNullFieldError.checkNotNull(
                exerciseName, 'RoutineExercisesRecord', 'exerciseName'),
            image: BuiltValueNullFieldError.checkNotNull(
                image, 'RoutineExercisesRecord', 'image'),
            video: BuiltValueNullFieldError.checkNotNull(
                video, 'RoutineExercisesRecord', 'video'),
            muscle: BuiltValueNullFieldError.checkNotNull(
                muscle, 'RoutineExercisesRecord', 'muscle'),
            routine: BuiltValueNullFieldError.checkNotNull(
                routine, 'RoutineExercisesRecord', 'routine'),
            description: BuiltValueNullFieldError.checkNotNull(
                description, 'RoutineExercisesRecord', 'description'),
            sets: BuiltValueNullFieldError.checkNotNull(
                sets, 'RoutineExercisesRecord', 'sets'),
            reps: BuiltValueNullFieldError.checkNotNull(
                reps, 'RoutineExercisesRecord', 'reps'),
            order:
                BuiltValueNullFieldError.checkNotNull(order, 'RoutineExercisesRecord', 'order'),
            reference: BuiltValueNullFieldError.checkNotNull(reference, 'RoutineExercisesRecord', 'reference'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
