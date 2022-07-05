import 'dart:async';

import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'master_diet_meal_record.g.dart';

abstract class MasterDietMealRecord
    implements Built<MasterDietMealRecord, MasterDietMealRecordBuilder> {
  static Serializer<MasterDietMealRecord> get serializer =>
      _$masterDietMealRecordSerializer;

  
  DocumentReference get masterDiet;

  
  String get mealName;

  
  String get image;

  
  String get video;

  
  String get foodName;

  
  String get description;

  
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(MasterDietMealRecordBuilder builder) => builder
    ..mealName = ''
    ..image = ''
    ..video = ''
    ..foodName = ''
    ..description = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('masterDietMeal');

  static Stream<MasterDietMealRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<MasterDietMealRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  MasterDietMealRecord._();
  factory MasterDietMealRecord(
          [void Function(MasterDietMealRecordBuilder) updates]) =
      _$MasterDietMealRecord;

  static MasterDietMealRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createMasterDietMealRecordData({
  String mealName,
  String image,
  String video,
  String foodName,
  DocumentReference masterDiet,
  String description,
}) =>
    serializers.toFirestore(
        MasterDietMealRecord.serializer,
        MasterDietMealRecord((r) => r
          ..mealName = mealName
          ..image = image
          ..video = video
          ..foodName = foodName
          ..masterDiet = masterDiet
          ..description = description));
