// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
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
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCMpAFFFCfVbqytoiIMWHbp_GDjcq3-oHo',
    appId: '1:734974547874:web:4c02415b4d80eb257d04fb',
    messagingSenderId: '734974547874',
    projectId: 'noter-ayvak',
    authDomain: 'noter-ayvak.firebaseapp.com',
    storageBucket: 'noter-ayvak.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCyX_GovvczRU0u00WNNBzCNQAZ4-XEJhM',
    appId: '1:734974547874:android:7c4d8c0f0102ff647d04fb',
    messagingSenderId: '734974547874',
    projectId: 'noter-ayvak',
    storageBucket: 'noter-ayvak.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC_utQW-9ZfNUGSnv0pq0L-Iz5zh-Lyih4',
    appId: '1:734974547874:ios:d79585c3359e41887d04fb',
    messagingSenderId: '734974547874',
    projectId: 'noter-ayvak',
    storageBucket: 'noter-ayvak.appspot.com',
    iosBundleId: 'com.foolish.noter',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC_utQW-9ZfNUGSnv0pq0L-Iz5zh-Lyih4',
    appId: '1:734974547874:ios:06ab7718042098c07d04fb',
    messagingSenderId: '734974547874',
    projectId: 'noter-ayvak',
    storageBucket: 'noter-ayvak.appspot.com',
    iosBundleId: 'com.foolish.noter.RunnerTests',
  );
}
