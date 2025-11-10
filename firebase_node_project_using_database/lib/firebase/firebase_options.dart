
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
      apiKey: 'AIzaSyBtN0AqwREvmwL2ruJV3xTv9fVJ8DXxMLY',
      appId: '1:412547812268:android:1f79092fc4b6cd233dc809',
      messagingSenderId: '412547812268',
      projectId: 'note-project-f81ff',
      storageBucket: 'note-project-f81ff.firebasestorage.app',
      databaseURL:
      'https://note-project-f81ff-default-rtdb.firebaseio.com');

  static const FirebaseOptions ios = FirebaseOptions(                                                                                                                                                                                                                                                                                                                                                                                                                                            
      apiKey: 'AIzaSyBtN0AqwREvmwL2ruJV3xTv9fVJ8DXxMLY',
      appId: '1:412547812268:android:1f79092fc4b6cd233dc809',
      messagingSenderId: '412547812268',
      projectId: 'note-project-f81ff',
      storageBucket: 'note-project-f81ff.firebasestorage.app',
      iosBundleId: 'com.iftee1.firebase_note_project1',
      databaseURL:
      'https://note-project-f81ff-default-rtdb.firebaseio.com');
}