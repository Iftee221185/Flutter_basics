
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;


class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
            'you can reconfigure this by running the FlutterFire CLI again.',
      );
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

  static const FirebaseOptions android = FirebaseOptions(
      apiKey: 'AIzaSyAmLstTraUUh3ps6E69v9KgOCkl6JEa9mY',
      appId: '1:1044289822775:android:bfee590980ccf28b109fb2',
      messagingSenderId: '1044289822775',
      projectId: 'assignment-7-54dcf',
      storageBucket: 'assignment-7-54dcf.firebasestorage.app',
      databaseURL:
      'https://assignment-7-54dcf-default-rtdb.firebaseio.com');

  static const FirebaseOptions ios = FirebaseOptions(                                                                                                                                                                                                                                                                                                                                                                                                                                            
      apiKey: 'AIzaSyAmLstTraUUh3ps6E69v9KgOCkl6JEa9mY',
      appId: '1:1044289822775:android:bfee590980ccf28b109fb2',
      messagingSenderId: '1044289822775',
      projectId: 'assignment-7-54dcf',
      storageBucket: 'assignment-7-54dcf.firebasestorage.app',
      iosBundleId: 'com.iftee4.assignment7',
      databaseURL:
      'https://assignment-7-54dcf-default-rtdb.firebaseio.com');
}