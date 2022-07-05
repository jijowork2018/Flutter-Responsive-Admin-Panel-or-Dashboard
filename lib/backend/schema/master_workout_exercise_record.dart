import 'dart:async';

import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'master_workout_exercise_record.g.dart';

abstract class MasterWorkoutExerciseRecord
    implements
        Built<MasterWorkoutExerciseRecord, MasterWorkoutExerciseRecordBuilder> {
  static Serializer<MasterWorkoutExerciseRecord> get serializer =>
      _$masterWorkoutExerciseRecordSerializer;

  
  DocumentReference get masterWorkout;

  
  String get exerciseName;

  
  String get image;

  
  String get video;

  
  String get muscle;

  
  String get description;

  
  String get sets;

  
  String get reps;

  
  int get order;

  
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(MasterWorkoutExerciseRecordBuilder builder) =>
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
      FirebaseFirestore.instance.collection('masterWorkoutExercise');

  static Stream<MasterWorkoutExerciseRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<MasterWorkoutExerciseRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  MasterWorkoutExerciseRecord._();
  factory MasterWorkoutExerciseRecord(
          [void Function(MasterWorkoutExerciseRecordBuilder) updates]) =
      _$MasterWorkoutExerciseRecord;

  static MasterWorkoutExerciseRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createMasterWorkoutExerciseRecordData({
  String exerciseName,
  String image,
  String video,
  String muscle,
  DocumentReference masterWorkout,
  String description,
  int order,
  String sets,
  String reps,
}) =>
    serializers.toFirestore(
        MasterWorkoutExerciseRecord.serializer,
        MasterWorkoutExerciseRecord((r) => r
          ..exerciseName = exerciseName
          ..image = image
          ..video = video
          ..muscle = muscle
          ..masterWorkout = masterWorkout
          ..description = description
          ..order = order
          ..sets = sets
          ..reps = reps));
