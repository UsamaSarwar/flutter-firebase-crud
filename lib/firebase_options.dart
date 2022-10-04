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
    apiKey: 'AIzaSyCC8y2FvbqPfMz2_AJDGIUQJE2PSt3z9dA',
    appId: '1:63116835189:web:c9ac88b1e87d00e3717b3c',
    messagingSenderId: '63116835189',
    projectId: 'crudapp-773b2',
    authDomain: 'crudapp-773b2.firebaseapp.com',
    storageBucket: 'crudapp-773b2.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC8KFXNZBzVj19KLMGVpHzmM0_6vFWP1xY',
    appId: '1:63116835189:android:afbd693e7ec063aa717b3c',
    messagingSenderId: '63116835189',
    projectId: 'crudapp-773b2',
    storageBucket: 'crudapp-773b2.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB-j3zmL85NfAcgHHlHVXgSg-SiljFpwA4',
    appId: '1:63116835189:ios:9340d68110c29fe0717b3c',
    messagingSenderId: '63116835189',
    projectId: 'crudapp-773b2',
    storageBucket: 'crudapp-773b2.appspot.com',
    iosClientId: '63116835189-3gogllpregr142bjl7b3pe12uko962h9.apps.googleusercontent.com',
    iosBundleId: 'dev.usama.crudapp',
  );
}
