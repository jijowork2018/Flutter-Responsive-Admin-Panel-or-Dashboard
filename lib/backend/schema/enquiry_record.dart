import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'enquiry_record.g.dart';

abstract class EnquiryRecord implements Built<EnquiryRecord, EnquiryRecordBuilder> {
  static Serializer<EnquiryRecord> get serializer => _$enquiryRecordSerializer;


  
  String get name;

  
  String get mobile;

  
  String get address;

  
  String get remarks;

  
  bool get isClosed;

  
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(EnquiryRecordBuilder builder) => builder
    ..name = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('enquiry');

  static Stream<EnquiryRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<EnquiryRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  EnquiryRecord._();
  factory EnquiryRecord([void Function(EnquiryRecordBuilder) updates]) = _$EnquiryRecord;

  static EnquiryRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createEnquiryRecordData({
  String name,
  String address,
  String mobile,
  String remarks,
  bool isClosed,
}) =>
    serializers.toFirestore(
        EnquiryRecord.serializer,
        EnquiryRecord((t) => t
          ..name = name
          ..address = address
          ..mobile = mobile
          ..remarks = remarks
          ..isClosed = isClosed));
