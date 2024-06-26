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
        return macos;
      case TargetPlatform.windows:
        return windows;
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC3ThEZ7Rkufd9mQQXoNzXA1oGiZqj3Z58',
    appId: '1:27609542891:android:763446de352631643dceae',
    messagingSenderId: '27609542891',
    projectId: 'foodhub-1323',
    storageBucket: 'foodhub-1323.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAsp3LN9rKN44_4DhHe6GJjgEmX9NGW6RY',
    appId: '1:27609542891:ios:7d28c4a57cebb6243dceae',
    messagingSenderId: '27609542891',
    projectId: 'foodhub-1323',
    storageBucket: 'foodhub-1323.appspot.com',
    androidClientId: '27609542891-5rpoulbdiu94nq3ik6dsps9p6bi439df.apps.googleusercontent.com',
    iosClientId: '27609542891-0qpdsi2s3nbncu40v2hfontr4p3qqp3l.apps.googleusercontent.com',
    iosBundleId: 'com.example.foodhub',
  );

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDIeOW9oHzxKvJNG7FE8CXM5I84nUa3L90',
    appId: '1:27609542891:web:7ff2bd101635cb393dceae',
    messagingSenderId: '27609542891',
    projectId: 'foodhub-1323',
    authDomain: 'foodhub-1323.firebaseapp.com',
    storageBucket: 'foodhub-1323.appspot.com',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAsp3LN9rKN44_4DhHe6GJjgEmX9NGW6RY',
    appId: '1:27609542891:ios:7d28c4a57cebb6243dceae',
    messagingSenderId: '27609542891',
    projectId: 'foodhub-1323',
    storageBucket: 'foodhub-1323.appspot.com',
    androidClientId: '27609542891-5rpoulbdiu94nq3ik6dsps9p6bi439df.apps.googleusercontent.com',
    iosClientId: '27609542891-0qpdsi2s3nbncu40v2hfontr4p3qqp3l.apps.googleusercontent.com',
    iosBundleId: 'com.example.foodhub',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDIeOW9oHzxKvJNG7FE8CXM5I84nUa3L90',
    appId: '1:27609542891:web:f8b6b1f0e1ab550c3dceae',
    messagingSenderId: '27609542891',
    projectId: 'foodhub-1323',
    authDomain: 'foodhub-1323.firebaseapp.com',
    storageBucket: 'foodhub-1323.appspot.com',
  );

}