import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'client_feedbacks_record.g.dart';

abstract class ClientFeedbacksRecord
    implements Built<ClientFeedbacksRecord, ClientFeedbacksRecordBuilder> {
  static Serializer<ClientFeedbacksRecord> get serializer =>
      _$clientFeedbacksRecordSerializer;

  
  DocumentReference get client;

  
  String get changesMade;

  
  double get calories;

  
  double get weight;

  
  DateTime get feedbackDate;

  
  DateTime get nextDueDate;

  
  String get clientInput;

  
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ClientFeedbacksRecordBuilder builder) =>
      builder
        ..changesMade = ''
        ..calories = 0.0
        ..weight = 0.0
        ..clientInput = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('clientFeedbacks');

  static Stream<ClientFeedbacksRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<ClientFeedbacksRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  ClientFeedbacksRecord._();
  factory ClientFeedbacksRecord(
          [void Function(ClientFeedbacksRecordBuilder) updates]) =
      _$ClientFeedbacksRecord;

  static ClientFeedbacksRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createClientFeedbacksRecordData({
  DocumentReference client,
  String changesMade,
  double calories,
  double weight,
  DateTime feedbackDate,
  DateTime nextDueDate,
  String clientInput,
}) =>
    serializers.toFirestore(
        ClientFeedbacksRecord.serializer,
        ClientFeedbacksRecord((c) => c
          ..client = client
          ..changesMade = changesMade
          ..calories = calories
          ..weight = weight
          ..feedbackDate = feedbackDate
          ..nextDueDate = nextDueDate
          ..clientInput = clientInput));
