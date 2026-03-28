// ignore_for_file: lines_longer_than_80_chars
//
// **Instructor / local solution branch:** Replace this file by running:
//   dart pub global activate flutterfire_cli
//   flutterfire configure
// The values below match the *template* `google-services.json` /
// `GoogleService-Info.plist` so the app compiles. Real sign-in requires a
// Firebase project with Email/Password enabled and keys from the console.

import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show TargetPlatform, defaultTargetPlatform, kIsWeb;

/// Default [FirebaseOptions] for supported targets (course template).
///
/// **Web / macOS:** Template keys match the placeholder project. For real auth,
/// run `flutterfire configure` with `web` / `macos` (and register those apps in
/// Firebase Console) so keys match your project.
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDoPs52Ggjg3hPC2quqArotBScnLmc_U7o',
    appId: '1:922629214095:android:fd861ba0ee27b6e2d0c5fa',
    messagingSenderId: '922629214095',
    projectId: 'weighty-flag-651',
    storageBucket: 'weighty-flag-651.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCourseTemplateReplaceMeIos000000000',
    appId: '1:100000000000:ios:def000000000000000000000',
    messagingSenderId: '100000000000',
    projectId: 'task-manager-course-w4',
    storageBucket: 'task-manager-course-w4.appspot.com',
    iosBundleId: 'com.example.taskManagerApp',
  );

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDMxRPFnyxrz88necHds2opwgxzl1qLTxk',
    appId: '1:922629214095:web:057bc997fa6a82dbd0c5fa',
    messagingSenderId: '922629214095',
    projectId: 'weighty-flag-651',
    authDomain: 'weighty-flag-651.firebaseapp.com',
    storageBucket: 'weighty-flag-651.firebasestorage.app',
    measurementId: 'G-1TJL5PG9GN',
  );

  /// Web needs `authDomain`. Register a **Web** app in Firebase for production.

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDavjOMR6q_Pq5uzxAF95zSY_pC46VY1FY',
    appId: '1:922629214095:ios:0743c427259e057fd0c5fa',
    messagingSenderId: '922629214095',
    projectId: 'weighty-flag-651',
    storageBucket: 'weighty-flag-651.firebasestorage.app',
    iosClientId: '922629214095-l0goc4bl409ecabdfst9fvi1hqdja1q0.apps.googleusercontent.com',
    iosBundleId: 'com.example.taskManagerApp',
  );

  /// Uses the same template project as iOS; add a **macOS** app in Firebase for production.
}