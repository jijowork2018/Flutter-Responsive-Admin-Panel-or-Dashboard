import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'user_device_token_record.g.dart';

abstract class UserDeviceTokenRecord
    implements Built<UserDeviceTokenRecord, UserDeviceTokenRecordBuilder> {
  static Serializer<UserDeviceTokenRecord> get serializer =>
      _$userDeviceTokenRecordSerializer;

  
  DocumentReference get user;

  
  String get deviceToken;

  
  String get platformName;

  
  String get userName;

  
  DateTime get createdDate;

  
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(UserDeviceTokenRecordBuilder builder) =>
      builder
        ..deviceToken = ''
        ..platformName = ''
        ..createdDate = DateTime.now()
        ..userName = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('userDeviceToken');

  static Stream<UserDeviceTokenRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<UserDeviceTokenRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  UserDeviceTokenRecord._();
  factory UserDeviceTokenRecord(
          [void Function(UserDeviceTokenRecordBuilder) updates]) =
      _$UserDeviceTokenRecord;

  static UserDeviceTokenRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createUserDeviceTokenRecordData({
  DocumentReference user,
  String deviceToken,
  String platformName,
  DateTime createdDate,
  String userName,
}) =>
    serializers.toFirestore(
        UserDeviceTokenRecord.serializer,
        UserDeviceTokenRecord((t) => t
          ..user = user
          ..platformName = platformName
          ..userName = userName
          ..createdDate = createdDate
          ..deviceToken = deviceToken));
