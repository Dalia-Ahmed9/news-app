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
    apiKey: 'AIzaSyA6zXVXPe3VJMADHMO3ltOMPz2UyDguK4Y',
    appId: '1:505227993853:web:9d1d23b00d3df359e1d494',
    messagingSenderId: '505227993853',
    projectId: 'newproject-43a0e',
    authDomain: 'newproject-43a0e.firebaseapp.com',
    storageBucket: 'newproject-43a0e.appspot.com',
    measurementId: 'G-TCP3R2ZZN9',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB2jizqbhFqG_XiRgv6uUN2WWoDNe814I4',
    appId: '1:505227993853:android:0b886e808617ac8ae1d494',
    messagingSenderId: '505227993853',
    projectId: 'newproject-43a0e',
    storageBucket: 'newproject-43a0e.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDicf2jgGl82OpXN4LDzhKRDa2o_gExY3Y',
    appId: '1:505227993853:ios:004d1895302e62c7e1d494',
    messagingSenderId: '505227993853',
    projectId: 'newproject-43a0e',
    storageBucket: 'newproject-43a0e.appspot.com',
    iosClientId: '505227993853-f7jvhf6d68ejv6f673vt0hhv48qtk2rr.apps.googleusercontent.com',
    iosBundleId: 'com.example.newsApp2',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDicf2jgGl82OpXN4LDzhKRDa2o_gExY3Y',
    appId: '1:505227993853:ios:004d1895302e62c7e1d494',
    messagingSenderId: '505227993853',
    projectId: 'newproject-43a0e',
    storageBucket: 'newproject-43a0e.appspot.com',
    iosClientId: '505227993853-f7jvhf6d68ejv6f673vt0hhv48qtk2rr.apps.googleusercontent.com',
    iosBundleId: 'com.example.newsApp2',
  );
}