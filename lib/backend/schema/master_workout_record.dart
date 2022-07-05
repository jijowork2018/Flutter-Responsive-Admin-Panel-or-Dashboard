import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'master_workout_record.g.dart';

abstract class MasterWorkoutRecord
    implements Built<MasterWorkoutRecord, MasterWorkoutRecordBuilder> {
  static Serializer<MasterWorkoutRecord> get serializer =>
      _$masterWorkoutRecordSerializer;

  
  String get description;

  
  String get name;

  
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(MasterWorkoutRecordBuilder builder) => builder
    ..name = ''
    ..description = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('masterWorkout');

  static Stream<MasterWorkoutRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<MasterWorkoutRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  MasterWorkoutRecord._();
  factory MasterWorkoutRecord(
          [void Function(MasterWorkoutRecordBuilder) updates]) =
      _$MasterWorkoutRecord;

  static MasterWorkoutRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createMasterWorkoutRecordData({
  String description,
  String name,
}) =>
    serializers.toFirestore(
        MasterWorkoutRecord.serializer,
        MasterWorkoutRecord((t) => t
          ..description = description
          ..name = name));
