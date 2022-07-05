import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'stock_record.g.dart';

abstract class StockRecord implements Built<StockRecord, StockRecordBuilder> {
  static Serializer<StockRecord> get serializer => _$stockRecordSerializer;

  
  String get name;

  
  String get category;

  
  int get quantity;

  
  String get remarks;

  
  String get imageUrl;


  
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(StockRecordBuilder builder) => builder
    ..name = ''
    ..category = ''
    ..imageUrl = ''
    ..quantity = 0
    ..remarks = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('stock');

  static Stream<StockRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<StockRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  StockRecord._();
  factory StockRecord([void Function(StockRecordBuilder) updates]) = _$StockRecord;

  static StockRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createStockRecordData({
  String name,
  String category,
  int quantity,
  String remarks,
  String imageUrl,
}) =>
    serializers.toFirestore(
        StockRecord.serializer,
        StockRecord((t) => t
          ..name = name
          ..category = category
          ..quantity = quantity
          ..imageUrl = imageUrl
          ..remarks = remarks));
