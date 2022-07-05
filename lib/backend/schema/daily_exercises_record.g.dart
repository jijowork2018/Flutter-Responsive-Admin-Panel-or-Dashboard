// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_exercises_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DailyExercisesRecord> _$dailyExercisesRecordSerializer =
    new _$DailyExercisesRecordSerializer();

class _$DailyExercisesRecordSerializer
    implements StructuredSerializer<DailyExercisesRecord> {
  @override
  final Iterable<Type> types = const [
    DailyExercisesRecord,
    _$DailyExercisesRecord
  ];
  @override
  final String wireName = 'DailyExercisesRecord';

  @override
  Iterable<Object> serialize(
      Serializers serializers, DailyExercisesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'muscleName',
      serializers.serialize(object.muscleName,
          specifiedType: const FullType(String)),
      'exerciseName',
      serializers.serialize(object.exerciseName,
          specifiedType: const FullType(String)),
      'date',
      serializers.serialize(object.date,
          specifiedType: const FullType(DateTime)),
      'client',
      serializers.serialize(object.client,
          specifiedType: const FullType(
              DocumentReference, const [const FullType(Object)])),
      'routineExercise',
      serializers.serialize(object.routineExercise,
          specifiedType: const FullType(
              DocumentReference, const [const FullType(Object)])),
      'sets',
      serializers.serialize(object.sets, specifiedType: const FullType(String)),
      'reps',
      serializers.serialize(object.reps, specifiedType: const FullType(String)),
      'weight',
      serializers.serialize(object.weight,
          specifiedType: const FullType(double)),
      'isCompleted',
      serializers.serialize(object.isCompleted,
          specifiedType: const FullType(bool)),
      'Document__Reference__Field',
      serializers.serialize(object.reference,
          specifiedType: const FullType(
              DocumentReference, const [const FullType(Object)])),
    ];

    return result;
  }

  @override
  DailyExercisesRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DailyExercisesRecordBuilder();

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
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'client':
          result.client = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'routineExercise':
          result.routineExercise = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'sets':
          result.sets = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'reps':
          result.reps = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'weight':
          result.weight = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'isCompleted':
          result.isCompleted = serializers.deserialize(value,
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

class _$DailyExercisesRecord extends DailyExercisesRecord {
  @override
  final String muscleName;
  @override
  final String exerciseName;
  @override
  final DateTime date;
  @override
  final DocumentReference<Object> client;
  @override
  final DocumentReference<Object> routineExercise;
  @override
  final String sets;
  @override
  final String reps;
  @override
  final double weight;
  @override
  final bool isCompleted;
  @override
  final DocumentReference<Object> reference;

  factory _$DailyExercisesRecord(
          [void Function(DailyExercisesRecordBuilder) updates]) =>
      (new DailyExercisesRecordBuilder()..update(updates)).build();

  _$DailyExercisesRecord._(
      {this.muscleName,
      this.exerciseName,
      this.date,
      this.client,
      this.routineExercise,
      this.sets,
      this.reps,
      this.weight,
      this.isCompleted,
      this.reference})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        muscleName, 'DailyExercisesRecord', 'muscleName');
    BuiltValueNullFieldError.checkNotNull(
        exerciseName, 'DailyExercisesRecord', 'exerciseName');
    BuiltValueNullFieldError.checkNotNull(date, 'DailyExercisesRecord', 'date');
    BuiltValueNullFieldError.checkNotNull(
        client, 'DailyExercisesRecord', 'client');
    BuiltValueNullFieldError.checkNotNull(
        routineExercise, 'DailyExercisesRecord', 'routineExercise');
    BuiltValueNullFieldError.checkNotNull(sets, 'DailyExercisesRecord', 'sets');
    BuiltValueNullFieldError.checkNotNull(reps, 'DailyExercisesRecord', 'reps');
    BuiltValueNullFieldError.checkNotNull(
        weight, 'DailyExercisesRecord', 'weight');
    BuiltValueNullFieldError.checkNotNull(
        isCompleted, 'DailyExercisesRecord', 'isCompleted');
    BuiltValueNullFieldError.checkNotNull(
        reference, 'DailyExercisesRecord', 'reference');
  }

  @override
  DailyExercisesRecord rebuild(
          void Function(DailyExercisesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DailyExercisesRecordBuilder toBuilder() =>
      new DailyExercisesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DailyExercisesRecord &&
        muscleName == other.muscleName &&
        exerciseName == other.exerciseName &&
        date == other.date &&
        client == other.client &&
        routineExercise == other.routineExercise &&
        sets == other.sets &&
        reps == other.reps &&
        weight == other.weight &&
        isCompleted == other.isCompleted &&
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
                                    $jc($jc(0, muscleName.hashCode),
                                        exerciseName.hashCode),
                                    date.hashCode),
                                client.hashCode),
                            routineExercise.hashCode),
                        sets.hashCode),
                    reps.hashCode),
                weight.hashCode),
            isCompleted.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DailyExercisesRecord')
          ..add('muscleName', muscleName)
          ..add('exerciseName', exerciseName)
          ..add('date', date)
          ..add('client', client)
          ..add('routineExercise', routineExercise)
          ..add('sets', sets)
          ..add('reps', reps)
          ..add('weight', weight)
          ..add('isCompleted', isCompleted)
          ..add('reference', reference))
        .toString();
  }
}

class DailyExercisesRecordBuilder
    implements Builder<DailyExercisesRecord, DailyExercisesRecordBuilder> {
  _$DailyExercisesRecord _$v;

  String _muscleName;
  String get muscleName => _$this._muscleName;
  set muscleName(String muscleName) => _$this._muscleName = muscleName;

  String _exerciseName;
  String get exerciseName => _$this._exerciseName;
  set exerciseName(String exerciseName) => _$this._exerciseName = exerciseName;

  DateTime _date;
  DateTime get date => _$this._date;
  set date(DateTime date) => _$this._date = date;

  DocumentReference<Object> _client;
  DocumentReference<Object> get client => _$this._client;
  set client(DocumentReference<Object> client) => _$this._client = client;

  DocumentReference<Object> _routineExercise;
  DocumentReference<Object> get routineExercise => _$this._routineExercise;
  set routineExercise(DocumentReference<Object> routineExercise) =>
      _$this._routineExercise = routineExercise;

  String _sets;
  String get sets => _$this._sets;
  set sets(String sets) => _$this._sets = sets;

  String _reps;
  String get reps => _$this._reps;
  set reps(String reps) => _$this._reps = reps;

  double _weight;
  double get weight => _$this._weight;
  set weight(double weight) => _$this._weight = weight;

  bool _isCompleted;
  bool get isCompleted => _$this._isCompleted;
  set isCompleted(bool isCompleted) => _$this._isCompleted = isCompleted;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  DailyExercisesRecordBuilder() {
    DailyExercisesRecord._initializeBuilder(this);
  }

  DailyExercisesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _muscleName = $v.muscleName;
      _exerciseName = $v.exerciseName;
      _date = $v.date;
      _client = $v.client;
      _routineExercise = $v.routineExercise;
      _sets = $v.sets;
      _reps = $v.reps;
      _weight = $v.weight;
      _isCompleted = $v.isCompleted;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DailyExercisesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DailyExercisesRecord;
  }

  @override
  void update(void Function(DailyExercisesRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DailyExercisesRecord build() {
    final _$result = _$v ??
        new _$DailyExercisesRecord._(
            muscleName: BuiltValueNullFieldError.checkNotNull(
                muscleName, 'DailyExercisesRecord', 'muscleName'),
            exerciseName: BuiltValueNullFieldError.checkNotNull(
                exerciseName, 'DailyExercisesRecord', 'exerciseName'),
            date: BuiltValueNullFieldError.checkNotNull(
                date, 'DailyExercisesRecord', 'date'),
            client: BuiltValueNullFieldError.checkNotNull(
                client, 'DailyExercisesRecord', 'client'),
            routineExercise: BuiltValueNullFieldError.checkNotNull(
                routineExercise, 'DailyExercisesRecord', 'routineExercise'),
            sets: BuiltValueNullFieldError.checkNotNull(
                sets, 'DailyExercisesRecord', 'sets'),
            reps: BuiltValueNullFieldError.checkNotNull(
                reps, 'DailyExercisesRecord', 'reps'),
            weight: BuiltValueNullFieldError.checkNotNull(
                weight, 'DailyExercisesRecord', 'weight'),
            isCompleted:
                BuiltValueNullFieldError.checkNotNull(isCompleted, 'DailyExercisesRecord', 'isCompleted'),
            reference: BuiltValueNullFieldError.checkNotNull(reference, 'DailyExercisesRecord', 'reference'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
