import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'trainers_record.g.dart';

abstract class TrainersRecord
    implements Built<TrainersRecord, TrainersRecordBuilder> {
  static Serializer<TrainersRecord> get serializer =>
      _$trainersRecordSerializer;

  
  String get name;

  
  DateTime get dateOfBirth;

  
  double get yearsExperience;

  
  DocumentReference get user;

  
  String get address;

  
  String get gender;

  
  String get image;

  
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(TrainersRecordBuilder builder) => builder
    ..name = ''
    ..yearsExperience = 0.0
    ..address = ''
    ..gender = ''
    ..image = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('trainers');

  static Stream<TrainersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<TrainersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  TrainersRecord._();
  factory TrainersRecord([void Function(TrainersRecordBuilder) updates]) =
      _$TrainersRecord;

  static TrainersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createTrainersRecordData({
  String name,
  DateTime dateOfBirth,
  double yearsExperience,
  DocumentReference user,
  String address,
  String gender,
  String image,
}) =>
    serializers.toFirestore(
        TrainersRecord.serializer,
        TrainersRecord((t) => t
          ..name = name
          ..dateOfBirth = dateOfBirth
          ..yearsExperience = yearsExperience
          ..user = user
          ..address = address
          ..gender = gender
          ..image = image));
