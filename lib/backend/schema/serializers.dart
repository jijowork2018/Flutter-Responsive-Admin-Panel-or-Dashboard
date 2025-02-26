import 'package:admin/backend/schema/transaction_record.dart';
import 'package:built_value/standard_json_plugin.dart';

import 'master_diet_meal_record.dart';
import 'master_diet_record.dart';
import 'user_posts_record.dart';
import 'users_record.dart';
import 'post_comments_record.dart';
import 'user_stories_record.dart';
import 'story_comments_record.dart';
import 'friends_record.dart';
import 'chats_record.dart';
import 'chat_messages_record.dart';
import 'clients_record.dart';
import 'trainers_record.dart';
import 'packages_record.dart';
import 'client_membership_record.dart';
import 'routines_record.dart';
import 'routine_exercises_record.dart';
import 'diet_routine_record.dart';
import 'diet_meals_record.dart';
import 'daily_meal_record.dart';
import 'daily_exercises_record.dart';
import 'client_feedbacks_record.dart';
import 'exercise_library_record.dart';
import 'master_workout_record.dart';
import 'master_workout_exercise_record.dart';
import 'user_device_token_record.dart';
import 'enquiry_record.dart';
import 'stock_record.dart';

import 'index.dart';

export 'index.dart';

part 'serializers.g.dart';

const kDocumentReferenceField = 'Document__Reference__Field';

@SerializersFor(const [
  UserPostsRecord,
  UsersRecord,
  PostCommentsRecord,
  UserStoriesRecord,
  StoryCommentsRecord,
  FriendsRecord,
  ChatsRecord,
  ChatMessagesRecord,
  ClientsRecord,
  TrainersRecord,
  PackagesRecord,
  ClientMembershipRecord,
  RoutinesRecord,
  RoutineExercisesRecord,
  DietRoutineRecord,
  DietMealsRecord,
  DailyMealRecord,
  DailyExercisesRecord,
  ClientFeedbacksRecord,
  ExerciseLibraryRecord,
  MasterWorkoutRecord,
  MasterWorkoutExerciseRecord,
  MasterDietRecord,
  MasterDietMealRecord,
  UserDeviceTokenRecord,
  EnquiryRecord,
  StockRecord,
  TransactionsRecord
])
final Serializers serializers = (_$serializers.toBuilder()
      ..add(DocumentReferenceSerializer())
      ..add(DateTimeSerializer())
      ..add(LatLngSerializer())
      ..addPlugin(StandardJsonPlugin()))
    .build();

extension SerializerExtensions on Serializers {
  Map<String, dynamic> toFirestore<T>(Serializer<T> serializer, T object) =>
      mapToFirestore(serializeWith(serializer, object));
}

class DocumentReferenceSerializer
    implements PrimitiveSerializer<DocumentReference> {
  final bool structured = false;
  @override
  final Iterable<Type> types = new BuiltList<Type>([DocumentReference]);
  @override
  final String wireName = 'DocumentReference';

  @override
  Object serialize(Serializers serializers, DocumentReference reference,
      {FullType specifiedType: FullType.unspecified}) {
    return reference;
  }

  @override
  DocumentReference deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType: FullType.unspecified}) =>
      serialized as DocumentReference;
}

class DateTimeSerializer implements PrimitiveSerializer<DateTime> {
  @override
  final Iterable<Type> types = new BuiltList<Type>([DateTime]);
  @override
  final String wireName = 'DateTime';

  @override
  Object serialize(Serializers serializers, DateTime dateTime,
      {FullType specifiedType: FullType.unspecified}) {
    return dateTime;
  }

  @override
  DateTime deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType: FullType.unspecified}) =>
      serialized as DateTime;
}

class LatLngSerializer implements PrimitiveSerializer<LatLng> {
  final bool structured = false;
  @override
  final Iterable<Type> types = new BuiltList<Type>([LatLng]);
  @override
  final String wireName = 'LatLng';

  @override
  Object serialize(Serializers serializers, LatLng location,
      {FullType specifiedType: FullType.unspecified}) {
    return location;
  }

  @override
  LatLng deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType: FullType.unspecified}) =>
      serialized as LatLng;
}

Map<String, dynamic> serializedData(DocumentSnapshot doc) =>
    {...mapFromFirestore(doc.data()), kDocumentReferenceField: doc.reference};

Map<String, dynamic> mapFromFirestore(Map<String, dynamic> data) =>
    data.map((key, value) {
      if (value is Timestamp) {
        value = (value as Timestamp).toDate();
      }
      if (value is GeoPoint) {
        value = (value as GeoPoint).toLatLng();
      }
      return MapEntry(key, value);
    });

Map<String, dynamic> mapToFirestore(Map<String, dynamic> data) =>
    data.map((key, value) {
      if (value is LatLng) {
        value = (value as LatLng).toGeoPoint();
      }
      return MapEntry(key, value);
    });

extension GeoPointExtension on LatLng {
  GeoPoint toGeoPoint() => GeoPoint(latitude, longitude);
}

extension LatLngExtension on GeoPoint {
  LatLng toLatLng() => LatLng(latitude, longitude);
}

DocumentReference toRef(String ref) => FirebaseFirestore.instance.doc(ref);

T safeGet<T>(T Function() func, [Function(dynamic) reportError]) {
  try {
    return func();
  } catch (e) {
    reportError?.call(e);
  }
  return null;
}
