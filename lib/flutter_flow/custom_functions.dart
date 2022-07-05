import 'dart:io';
import 'dart:math' as math;

import 'package:admin/app_state.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

int likes(UserPostsRecord post) {
  return post.likes.length;
}

bool hasUploadedMedia(String mediaPath) {
  return mediaPath != null && mediaPath.isNotEmpty;
}

bool updateAllDailyMealRecords(
  DateTime date,
  bool eaten,
) {
  // filter dailyMealRecords by date passed and update eaten value

  FirebaseFirestore.instance
      .collection('dailyMeal')
      .where('date', isEqualTo: DateTime(date.year, date.month, date.day))
      .snapshots()
      .listen((data) => data.docs.forEach((doc) {
            FirebaseFirestore.instance.runTransaction((Transaction tx) async {
              DocumentSnapshot freshSnap = await tx.get(doc.reference);
              await tx.update(freshSnap.reference, <String, dynamic>{
                'eaten': eaten,
              });
            });
          }));
  return true;
}

DateTime changeDateTimeToDate(DateTime date) {
  if (date == null) {
    DateTime today = DateTime.now();
    return DateTime(today.year, today.month, today.day);
  }
  return DateTime(date.year, date.month, date.day);
}

updateUserDevicePushToken(String token) async {
  List<UserDeviceTokenRecord> userDeviceTokenRecord =
      await queryUserDeviceTokenRecordOnce(
          queryBuilder: (userDeviceTokenRecord) =>
              userDeviceTokenRecord.where('deviceToken', isEqualTo: token),
          singleRecord: true);
  print(userDeviceTokenRecord);
  if (userDeviceTokenRecord.length == 0 ||
      (token != userDeviceTokenRecord?.first?.deviceToken)) {
    final data = createUserDeviceTokenRecordData(
        deviceToken: token,
        user: currentUserDocument.reference,
        platformName: Platform.operatingSystem,
        createdDate: DateTime.now(),
        userName: currentUserEmail);

    final userDeviceTokenRecordReference =
        UserDeviceTokenRecord.collection.doc();
    await userDeviceTokenRecordReference.set(data);
    final newDeviceToken = RoutinesRecord.getDocumentFromData(
        data, userDeviceTokenRecordReference);
    FFAppState().userDevicePushToken = newDeviceToken.reference;
  } else {
    print('token already present');
    FFAppState().userDevicePushToken = userDeviceTokenRecord.first?.reference;
  }
}
