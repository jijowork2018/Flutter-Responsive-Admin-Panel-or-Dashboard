import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'packages_record.g.dart';

abstract class PackagesRecord
    implements Built<PackagesRecord, PackagesRecordBuilder> {
  static Serializer<PackagesRecord> get serializer =>
      _$packagesRecordSerializer;

  
  String get packageName;

  
  double get price;

  
  int get clientNumber;

  
  double get duration;

  
  String get description;

  
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(PackagesRecordBuilder builder) => builder
    ..packageName = ''
    ..price = 0.0
    ..clientNumber = 0
    ..duration = 0.0
    ..description = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('packages');

  static Stream<PackagesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<PackagesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  PackagesRecord._();
  factory PackagesRecord([void Function(PackagesRecordBuilder) updates]) =
      _$PackagesRecord;

  static PackagesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createPackagesRecordData({
  String packageName,
  double price,
  int clientNumber,
  double duration,
  String description,
}) =>
    serializers.toFirestore(
        PackagesRecord.serializer,
        PackagesRecord((p) => p
          ..packageName = packageName
          ..price = price
          ..clientNumber = clientNumber
          ..duration = duration
          ..description = description));
