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
    apiKey: 'AIzaSyCgFOCnHbNfSjlK74U8ZuLp7ahIo-Iy1aY',
    appId: '1:107232426109:web:555a8afcdc425168071914',
    messagingSenderId: '107232426109',
    projectId: 'minimal-social-app-412a2',
    authDomain: 'minimal-social-app-412a2.firebaseapp.com',
    storageBucket: 'minimal-social-app-412a2.appspot.com',
    measurementId: 'G-8VMBYJ10MS',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDWwHrrJk-qGqwplutHEqFVko0uzSSRUcY',
    appId: '1:107232426109:android:b7299b54c02f1fc1071914',
    messagingSenderId: '107232426109',
    projectId: 'minimal-social-app-412a2',
    storageBucket: 'minimal-social-app-412a2.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBRKubxpW4LfRLrBCkhTA3FSsAZ3-wAkGI',
    appId: '1:107232426109:ios:df0c396fb643eb47071914',
    messagingSenderId: '107232426109',
    projectId: 'minimal-social-app-412a2',
    storageBucket: 'minimal-social-app-412a2.appspot.com',
    iosBundleId: 'com.example.myapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBRKubxpW4LfRLrBCkhTA3FSsAZ3-wAkGI',
    appId: '1:107232426109:ios:9d081a180d3c8d15071914',
    messagingSenderId: '107232426109',
    projectId: 'minimal-social-app-412a2',
    storageBucket: 'minimal-social-app-412a2.appspot.com',
    iosBundleId: 'com.example.myapp.RunnerTests',
  );
}
