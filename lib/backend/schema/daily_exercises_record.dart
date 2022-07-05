import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'daily_exercises_record.g.dart';

abstract class DailyExercisesRecord
    implements Built<DailyExercisesRecord, DailyExercisesRecordBuilder> {
  static Serializer<DailyExercisesRecord> get serializer =>
      _$dailyExercisesRecordSerializer;

  
  String get muscleName;

  
  String get exerciseName;

  
  DateTime get date;

  
  DocumentReference get client;

  
  DocumentReference get routineExercise;

  
  String get sets;

  
  String get reps;

  
  double get weight;

  
  bool get isCompleted;

  
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(DailyExercisesRecordBuilder builder) => builder
    ..muscleName = ''
    ..exerciseName = ''
    ..sets = ''
    ..reps = ''
    ..weight = 0.0
    ..isCompleted = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('dailyExercises');

  static Stream<DailyExercisesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<DailyExercisesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  DailyExercisesRecord._();
  factory DailyExercisesRecord(
          [void Function(DailyExercisesRecordBuilder) updates]) =
      _$DailyExercisesRecord;

  static DailyExercisesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createDailyExercisesRecordData({
  String muscleName,
  String exerciseName,
  DateTime date,
  DocumentReference client,
  DocumentReference routineExercise,
  String sets,
  String reps,
  double weight,
  bool isCompleted,
}) =>
    serializers.toFirestore(
        DailyExercisesRecord.serializer,
        DailyExercisesRecord((d) => d
          ..muscleName = muscleName
          ..exerciseName = exerciseName
          ..date = date
          ..client = client
          ..routineExercise = routineExercise
          ..sets = sets
          ..reps = reps
          ..weight = weight
          ..isCompleted = isCompleted));
