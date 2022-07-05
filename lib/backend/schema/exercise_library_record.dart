import 'dart:async';

import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'exercise_library_record.g.dart';

abstract class ExerciseLibraryRecord
    implements Built<ExerciseLibraryRecord, ExerciseLibraryRecordBuilder> {
  static Serializer<ExerciseLibraryRecord> get serializer =>
      _$exerciseLibraryRecordSerializer;

  
  String get muscleName;

  
  String get exerciseName;

  
  String get description;

  
  String get image;

  
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ExerciseLibraryRecordBuilder builder) =>
      builder
        ..muscleName = ''
        ..exerciseName = ''
        ..image = ''
        ..description = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('exerciseLibrary');

  static Stream<ExerciseLibraryRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<ExerciseLibraryRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  ExerciseLibraryRecord._();
  factory ExerciseLibraryRecord(
          [void Function(ExerciseLibraryRecordBuilder) updates]) =
      _$ExerciseLibraryRecord;

  static ExerciseLibraryRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createExerciseLibraryRecordData({
  String muscleName,
  String exerciseName,
  String description,
  String image,
}) =>
    serializers.toFirestore(
        ExerciseLibraryRecord.serializer,
        ExerciseLibraryRecord((t) => t
          ..muscleName = muscleName
          ..exerciseName = exerciseName
          ..image = image
          ..description = description));
