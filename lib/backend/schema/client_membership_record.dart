import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'client_membership_record.g.dart';

abstract class ClientMembershipRecord
    implements Built<ClientMembershipRecord, ClientMembershipRecordBuilder> {
  static Serializer<ClientMembershipRecord> get serializer =>
      _$clientMembershipRecordSerializer;

  
  DocumentReference get package;

  
  double get price;

  
  int get duration;

  
  DateTime get startDate;

  
  DateTime get endDate;

  
  String get description;

  
  DocumentReference get client;

  
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ClientMembershipRecordBuilder builder) =>
      builder
        ..price = 0.0
        ..duration = 0
        ..description = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('clientMembership');

  static Stream<ClientMembershipRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<ClientMembershipRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  ClientMembershipRecord._();
  factory ClientMembershipRecord(
          [void Function(ClientMembershipRecordBuilder) updates]) =
      _$ClientMembershipRecord;

  static ClientMembershipRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createClientMembershipRecordData({
  DocumentReference package,
  double price,
  int duration,
  DateTime startDate,
  DateTime endDate,
  String description,
  DocumentReference client,
}) =>
    serializers.toFirestore(
        ClientMembershipRecord.serializer,
        ClientMembershipRecord((c) => c
          ..package = package
          ..price = price
          ..duration = duration
          ..startDate = startDate
          ..endDate = endDate
          ..description = description
          ..client = client));
