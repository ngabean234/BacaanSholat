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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyD1S05rvJndaIwnIG38yiOqyXCKF2-0EoI',
    appId: '1:745731829695:web:ea4876e2975e74441b7b0a',
    messagingSenderId: '745731829695',
    projectId: 'login-mobile-15c74',
    authDomain: 'login-mobile-15c74.firebaseapp.com',
    storageBucket: 'login-mobile-15c74.appspot.com',
    measurementId: 'G-40HTP2QCY0',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBB0tCNYYOk_g-aUzNB3YOPXDl2hwBsjSA',
    appId: '1:745731829695:android:077bdbed31aa78111b7b0a',
    messagingSenderId: '745731829695',
    projectId: 'login-mobile-15c74',
    storageBucket: 'login-mobile-15c74.appspot.com',
  );
}