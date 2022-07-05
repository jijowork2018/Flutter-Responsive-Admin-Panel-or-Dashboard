import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'clients_record.g.dart';

abstract class ClientsRecord
    implements Built<ClientsRecord, ClientsRecordBuilder> {
  static Serializer<ClientsRecord> get serializer => _$clientsRecordSerializer;

  
  String get name;

  @nullable
  DateTime get dateOfBirth;

  @nullable
  double get yearsExperience;

  @nullable
  String get address;

  @nullable
  String get gender;

  @nullable
  DocumentReference get user;

  @nullable
  DocumentReference get trainer;

  @nullable
  String get image;

  
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ClientsRecordBuilder builder) => builder
    ..name = ''
    ..yearsExperience = 0.0
    ..address = ''
    ..gender = ''
    ..image = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('clients');

  static Stream<ClientsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<ClientsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  ClientsRecord._();
  factory ClientsRecord([void Function(ClientsRecordBuilder) updates]) =
      _$ClientsRecord;

  static ClientsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createClientsRecordData({
  String name,
  DateTime dateOfBirth,
  double yearsExperience,
  String address,
  String gender,
  DocumentReference user,
  DocumentReference trainer,
  String image,
}) =>
    serializers.toFirestore(
        ClientsRecord.serializer,
        ClientsRecord((c) => c
          ..name = name
          ..dateOfBirth = dateOfBirth
          ..yearsExperience = yearsExperience
          ..address = address
          ..gender = gender
          ..user = user
          ..trainer = trainer
          ..image = image));
