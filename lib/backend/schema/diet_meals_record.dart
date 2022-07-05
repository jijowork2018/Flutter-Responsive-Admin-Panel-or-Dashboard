import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'diet_meals_record.g.dart';

abstract class DietMealsRecord
    implements Built<DietMealsRecord, DietMealsRecordBuilder> {
  static Serializer<DietMealsRecord> get serializer =>
      _$dietMealsRecordSerializer;

  
  String get mealName;

  
  String get description;

  
  String get image;

  
  String get video;

  
  DocumentReference get dietRoutine;

  
  String get foodName;

  
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(DietMealsRecordBuilder builder) => builder
    ..mealName = ''
    ..description = ''
    ..image = ''
    ..video = ''
    ..foodName = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('dietMeals');

  static Stream<DietMealsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<DietMealsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  DietMealsRecord._();
  factory DietMealsRecord([void Function(DietMealsRecordBuilder) updates]) =
      _$DietMealsRecord;

  static DietMealsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createDietMealsRecordData({
  String mealName,
  String description,
  String image,
  String video,
  DocumentReference dietRoutine,
  String foodName,
}) =>
    serializers.toFirestore(
        DietMealsRecord.serializer,
        DietMealsRecord((d) => d
          ..mealName = mealName
          ..description = description
          ..image = image
          ..video = video
          ..dietRoutine = dietRoutine
          ..foodName = foodName));
