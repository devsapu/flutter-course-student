import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:permission_handler/permission_handler.dart';

/// Firebase Cloud Messaging — **foreground only** (Week 5).
///
/// Split-friendly for group work:
/// - [requestPermission] — setup / Android 13+ & Apple
/// - [getToken] — device team
/// - [setupListeners] — listener team
///
/// Call [initialize] once after [Firebase.initializeApp]. Does not touch auth.
class NotificationService {
  NotificationService._();
  static final NotificationService instance = NotificationService._();

  final FirebaseMessaging _messaging = FirebaseMessaging.instance;

  /// Runs [requestPermission], [getToken], and [setupListeners] in order.
  Future<void> initialize() async {
    await requestPermission();
    await getToken();
    setupListeners();
  }

  /// Asks to show notifications (Android 13+ runtime, iOS/macOS dialog, web prompt).
  Future<void> requestPermission() async {
    if (kIsWeb) {
      final settings = await _messaging.requestPermission(
        alert: true,
        badge: true,
        sound: true,
      );
      if (kDebugMode) {
        debugPrint('[FCM] Web authorizationStatus: ${settings.authorizationStatus}');
      }
      return;
    }

    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        final status = await Permission.notification.request();
        if (kDebugMode) {
          debugPrint('[FCM] Android notification permission: $status');
        }
        break;
      case TargetPlatform.iOS:
      case TargetPlatform.macOS:
        final settings = await _messaging.requestPermission(
          alert: true,
          badge: true,
          sound: true,
        );
        if (kDebugMode) {
          debugPrint(
            '[FCM] Apple authorizationStatus: ${settings.authorizationStatus}',
          );
        }
        break;
      default:
        if (kDebugMode) {
          debugPrint('[FCM] Skipping permission prompt for this platform.');
        }
    }
  }

  /// Retrieves the FCM registration token and logs it for debugging / Cloud Console tests.
  Future<void> getToken() async {
    try {
      final token = await _messaging.getToken();
      if (kDebugMode) {
        debugPrint('[FCM TOKEN]: ${token ?? '(null)'}');
      }
    } catch (e, st) {
      if (kDebugMode) {
        debugPrint('[FCM TOKEN] error: $e');
        debugPrint('$st');
      }
    }
  }

  /// Subscribes to foreground messages only ([FirebaseMessaging.onMessage]).
  void setupListeners() {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      final title = message.notification?.title ?? '(no title)';
      final body = message.notification?.body ?? '(no body)';
      if (kDebugMode) {
        debugPrint('[FCM MESSAGE]: $title - $body');
      }
    });

    _messaging.onTokenRefresh.listen((token) {
      if (kDebugMode) {
        debugPrint('[FCM TOKEN]: $token');
      }
    });
  }
}
