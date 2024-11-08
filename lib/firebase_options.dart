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

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyACN76TrbcXZCT87r_pIDJieHStw-J0YPQ',
    appId: '1:749479698116:web:941264678011a6015df391',
    messagingSenderId: '749479698116',
    projectId: 'chatpro-f544c',
    authDomain: 'chatpro-f544c.firebaseapp.com',
    storageBucket: 'chatpro-f544c.appspot.com',
    measurementId: 'G-QSNDFT71GM',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCepnkfUuYJcbnRztdownGlUe7WRfozmfY',
    appId: '1:749479698116:android:78f83eace94349225df391',
    messagingSenderId: '749479698116',
    projectId: 'chatpro-f544c',
    storageBucket: 'chatpro-f544c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCRkF7Bu_m0TECdQhAc3oLBOgHSbOeQNG0',
    appId: '1:749479698116:ios:00fc13d10ca8397d5df391',
    messagingSenderId: '749479698116',
    projectId: 'chatpro-f544c',
    storageBucket: 'chatpro-f544c.appspot.com',
    iosBundleId: 'com.example.chatApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCRkF7Bu_m0TECdQhAc3oLBOgHSbOeQNG0',
    appId: '1:749479698116:ios:00fc13d10ca8397d5df391',
    messagingSenderId: '749479698116',
    projectId: 'chatpro-f544c',
    storageBucket: 'chatpro-f544c.appspot.com',
    iosBundleId: 'com.example.chatApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyACN76TrbcXZCT87r_pIDJieHStw-J0YPQ',
    appId: '1:749479698116:web:629ea0b09395a1705df391',
    messagingSenderId: '749479698116',
    projectId: 'chatpro-f544c',
    authDomain: 'chatpro-f544c.firebaseapp.com',
    storageBucket: 'chatpro-f544c.appspot.com',
    measurementId: 'G-KL7VX80SND',
  );
}
