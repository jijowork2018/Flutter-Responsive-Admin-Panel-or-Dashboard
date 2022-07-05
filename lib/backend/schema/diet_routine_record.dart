import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'diet_routine_record.g.dart';

abstract class DietRoutineRecord
    implements Built<DietRoutineRecord, DietRoutineRecordBuilder> {
  static Serializer<DietRoutineRecord> get serializer =>
      _$dietRoutineRecordSerializer;

  
  String get name;

  
  String get description;

  
  bool get isCurrent;

  
  DateTime get startDate;

  
  DateTime get endDate;

  
  DocumentReference get client;

  
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(DietRoutineRecordBuilder builder) => builder
    ..name = ''
    ..description = ''
    ..isCurrent = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('dietRoutine');

  static Stream<DietRoutineRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<DietRoutineRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  DietRoutineRecord._();
  factory DietRoutineRecord([void Function(DietRoutineRecordBuilder) updates]) =
      _$DietRoutineRecord;

  static DietRoutineRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createDietRoutineRecordData({
  String name,
  String description,
  bool isCurrent,
  DateTime startDate,
  DateTime endDate,
  DocumentReference client,
}) =>
    serializers.toFirestore(
        DietRoutineRecord.serializer,
        DietRoutineRecord((d) => d
          ..name = name
          ..description = description
          ..isCurrent = isCurrent
          ..startDate = startDate
          ..endDate = endDate
          ..client = client));
