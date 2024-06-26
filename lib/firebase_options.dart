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
    apiKey: 'AIzaSyCo08OjBqMEm1rXXbnJflRkzoB4jKv7IxU',
    appId: '1:617793970810:web:89c637d647d7001ec1d1c3',
    messagingSenderId: '617793970810',
    projectId: 'quickbite-b7aef',
    authDomain: 'quickbite-b7aef.firebaseapp.com',
    storageBucket: 'quickbite-b7aef.appspot.com',
    measurementId: 'G-NEBLWHRER0',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBfobdObcaROQeoaYEQ-AVm5OGMCL0oHq4',
    appId: '1:617793970810:android:e3671d000ba0b877c1d1c3',
    messagingSenderId: '617793970810',
    projectId: 'quickbite-b7aef',
    storageBucket: 'quickbite-b7aef.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAcU4Ffff-zRhMwXBO2i3Ta6IgT7EXuppE',
    appId: '1:617793970810:ios:5c13d51ad1d32089c1d1c3',
    messagingSenderId: '617793970810',
    projectId: 'quickbite-b7aef',
    storageBucket: 'quickbite-b7aef.appspot.com',
    iosBundleId: 'com.example.eatease',
  );
}
