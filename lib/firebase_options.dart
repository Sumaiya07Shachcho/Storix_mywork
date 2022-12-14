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
    apiKey: 'AIzaSyBaKwVCYAkEnHJ57mprtB9ty1xccMpA6_8',
    appId: '1:145072357312:web:713f9f87c90923fa1b1225',
    messagingSenderId: '145072357312',
    projectId: 'storix-4dacd',
    authDomain: 'storix-4dacd.firebaseapp.com',
    storageBucket: 'storix-4dacd.appspot.com',
    measurementId: 'G-FZ34BTW1NR',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAcG_pbmoWapWBNTuc-m3hWeABRCLg2ezM',
    appId: '1:145072357312:android:c7b2f4a5151e35981b1225',
    messagingSenderId: '145072357312',
    projectId: 'storix-4dacd',
    storageBucket: 'storix-4dacd.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBdLObmDzTlAxKWHDj7oXpmqr1mi2u4DPI',
    appId: '1:145072357312:ios:5f0fcda63803379a1b1225',
    messagingSenderId: '145072357312',
    projectId: 'storix-4dacd',
    storageBucket: 'storix-4dacd.appspot.com',
    iosClientId: '145072357312-cr1eojcknrct9vbi8sohladg6omr0hvq.apps.googleusercontent.com',
    iosBundleId: 'com.example.storix',
  );
}
