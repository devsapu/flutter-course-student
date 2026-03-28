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

/// Default [FirebaseOptions] for Android and iOS (course template).
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web.',
      );
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'Add macOS to your Firebase project and extend firebase_options.dart '
          'if you need desktop auth for this course.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCourseTemplateReplaceMe000000000000',
    appId: '1:100000000000:android:abc0000000000000000000',
    messagingSenderId: '100000000000',
    projectId: 'task-manager-course-w4',
    storageBucket: 'task-manager-course-w4.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCourseTemplateReplaceMeIos000000000',
    appId: '1:100000000000:ios:def000000000000000000000',
    messagingSenderId: '100000000000',
    projectId: 'task-manager-course-w4',
    storageBucket: 'task-manager-course-w4.appspot.com',
    iosBundleId: 'com.example.taskManagerApp',
  );
}
