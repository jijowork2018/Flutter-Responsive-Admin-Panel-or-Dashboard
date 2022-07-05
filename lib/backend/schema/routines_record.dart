import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'routines_record.g.dart';

abstract class RoutinesRecord
    implements Built<RoutinesRecord, RoutinesRecordBuilder> {
  static Serializer<RoutinesRecord> get serializer =>
      _$routinesRecordSerializer;

  
  String get routineName;

  
  String get description;

  
  DateTime get startDate;

  
  DateTime get endDate;

  
  DocumentReference get client;

  
  bool get isCurrent;

  
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(RoutinesRecordBuilder builder) => builder
    ..routineName = ''
    ..description = ''
    ..isCurrent = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('routines');

  static Stream<RoutinesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<RoutinesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  RoutinesRecord._();
  factory RoutinesRecord([void Function(RoutinesRecordBuilder) updates]) =
      _$RoutinesRecord;

  static RoutinesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createRoutinesRecordData({
  String routineName,
  String description,
  DateTime startDate,
  DateTime endDate,
  DocumentReference client,
  bool isCurrent,
}) =>
    serializers.toFirestore(
        RoutinesRecord.serializer,
        RoutinesRecord((r) => r
          ..routineName = routineName
          ..description = description
          ..startDate = startDate
          ..endDate = endDate
          ..client = client
          ..isCurrent = isCurrent));
