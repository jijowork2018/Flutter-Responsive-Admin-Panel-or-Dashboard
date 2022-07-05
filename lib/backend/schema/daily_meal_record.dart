import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'daily_meal_record.g.dart';

abstract class DailyMealRecord
    implements Built<DailyMealRecord, DailyMealRecordBuilder> {
  static Serializer<DailyMealRecord> get serializer =>
      _$dailyMealRecordSerializer;

  
  DocumentReference get dietMeal;

  
  String get mealName;

  
  String get foodName;

  
  double get quantity;

  
  double get calories;

  
  DocumentReference get client;

  
  DateTime get date;

  
  bool get eaten;

  
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(DailyMealRecordBuilder builder) => builder
    ..mealName = ''
    ..foodName = ''
    ..quantity = 0.0
    ..calories = 0.0
    ..eaten = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('dailyMeal');

  static Stream<DailyMealRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<DailyMealRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  DailyMealRecord._();
  factory DailyMealRecord([void Function(DailyMealRecordBuilder) updates]) =
      _$DailyMealRecord;

  static DailyMealRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createDailyMealRecordData({
  DocumentReference dietMeal,
  String mealName,
  String foodName,
  double quantity,
  double calories,
  DocumentReference client,
  DateTime date,
  bool eaten,
}) =>
    serializers.toFirestore(
        DailyMealRecord.serializer,
        DailyMealRecord((d) => d
          ..dietMeal = dietMeal
          ..mealName = mealName
          ..foodName = foodName
          ..quantity = quantity
          ..calories = calories
          ..client = client
          ..date = date
          ..eaten = eaten));
