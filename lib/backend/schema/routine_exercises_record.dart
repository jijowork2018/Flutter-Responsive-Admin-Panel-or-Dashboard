import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'routine_exercises_record.g.dart';

abstract class RoutineExercisesRecord
    implements Built<RoutineExercisesRecord, RoutineExercisesRecordBuilder> {
  static Serializer<RoutineExercisesRecord> get serializer =>
      _$routineExercisesRecordSerializer;

  
  String get exerciseName;

  
  String get image;

  
  String get video;

  
  String get muscle;

  
  DocumentReference get routine;

  
  String get description;

  
  String get sets;

  
  String get reps;

  
  int get order;

  
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(RoutineExercisesRecordBuilder builder) =>
      builder
        ..exerciseName = ''
        ..image = ''
        ..video = ''
        ..muscle = ''
        ..description = ''
        ..order = 0
        ..sets = ''
        ..reps = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('routineExercises');

  static Stream<RoutineExercisesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<RoutineExercisesRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  RoutineExercisesRecord._();
  factory RoutineExercisesRecord(
          [void Function(RoutineExercisesRecordBuilder) updates]) =
      _$RoutineExercisesRecord;

  static RoutineExercisesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createRoutineExercisesRecordData({
  String exerciseName,
  String image,
  String video,
  String muscle,
  DocumentReference routine,
  String description,
  int order,
  String sets,
  String reps,
}) =>
    serializers.toFirestore(
        RoutineExercisesRecord.serializer,
        RoutineExercisesRecord((r) => r
          ..exerciseName = exerciseName
          ..image = image
          ..video = video
          ..muscle = muscle
          ..routine = routine
          ..description = description
          ..order = order
          ..sets = sets
          ..reps = reps));
