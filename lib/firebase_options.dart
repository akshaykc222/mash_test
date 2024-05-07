// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
    apiKey: 'AIzaSyAL4lLGvbolB9SZMvn2G4gtgYHaBu6_rL0',
    appId: '1:146118699165:web:159a3ba83533554bd6cc74',
    messagingSenderId: '146118699165',
    projectId: 'mash-6e7d0',
    authDomain: 'mash-6e7d0.firebaseapp.com',
    storageBucket: 'mash-6e7d0.appspot.com',
    measurementId: 'G-7PFEGMDT2M',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDL7oFVunc2O0GL2f1AtXTRkNlxC2S7aK8',
    appId: '1:146118699165:android:5ef8705d6b87e08dd6cc74',
    messagingSenderId: '146118699165',
    projectId: 'mash-6e7d0',
    storageBucket: 'mash-6e7d0.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAuEby9_GqtUFTGM9adGvR5GkVdD5Wo7kg',
    appId: '1:146118699165:ios:4c249331c7b64311d6cc74',
    messagingSenderId: '146118699165',
    projectId: 'mash-6e7d0',
    storageBucket: 'mash-6e7d0.appspot.com',
    iosBundleId: 'com.example.mash',
  );
}