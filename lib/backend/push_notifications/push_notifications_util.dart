/*
import 'dart:io' show Platform;

import '../../flutter_flow/custom_functions.dart';
import '../../auth/auth_util.dart';

import 'package:flutter/foundation.dart';
import 'package:stream_transform/stream_transform.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

export 'push_notifications_handler.dart';
export 'serialization_util.dart';

class UserTokenInfo {
  const UserTokenInfo(this.userPath, this.fcmToken);
  final String userPath;
  final String fcmToken;
}

Stream<UserTokenInfo> getFcmTokenStream(String userPath) =>
    Stream.value(!kIsWeb && (Platform.isIOS || Platform.isAndroid))
        .where((shouldGetToken) => shouldGetToken)
        .asyncMap((_) => FirebaseMessaging.instance.requestPermission().then(
              (settings) =>
                  settings.authorizationStatus == AuthorizationStatus.authorized
                      ? FirebaseMessaging.instance.getToken()
                      : null,
            ))
        .switchMap((fcmToken) => Stream.value(fcmToken)
            .merge(FirebaseMessaging.instance.onTokenRefresh))
        .where((fcmToken) => fcmToken != null && fcmToken.isNotEmpty)
        .map((token) => UserTokenInfo(userPath, token));
final fcmTokenUserStream = authenticatedUserStream
    .where((user) => user != null)
    .map((user) => user.reference.path)
    .distinct()
    .switchMap(getFcmTokenStream)
    .map(
      (userTokenInfo) => {
        print(userTokenInfo.fcmToken),
        print('userTokenInfo.userPath'),
        print(userTokenInfo.userPath),
        updateUserDevicePushToken(userTokenInfo.fcmToken),
      },
    );
*/
