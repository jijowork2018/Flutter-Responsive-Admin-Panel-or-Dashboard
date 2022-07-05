import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'master_diet_record.g.dart';

abstract class MasterDietRecord
    implements Built<MasterDietRecord, MasterDietRecordBuilder> {
  static Serializer<MasterDietRecord> get serializer =>
      _$masterDietRecordSerializer;

  
  String get description;

  
  String get name;

  
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(MasterDietRecordBuilder builder) => builder
    ..name = ''
    ..description = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('masterDiet');

  static Stream<MasterDietRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<MasterDietRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  MasterDietRecord._();
  factory MasterDietRecord([void Function(MasterDietRecordBuilder) updates]) =
      _$MasterDietRecord;

  static MasterDietRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createMasterDietRecordData({
  String description,
  String name,
}) =>
    serializers.toFirestore(
        MasterDietRecord.serializer,
        MasterDietRecord((t) => t
          ..description = description
          ..name = name));
