
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
      apiKey: 'AIzaSyApxK8eCa5LN4EBa62EFI9EBZbx3iDmldI',
      appId: '1:1099440706181:android:01de487ce12539f2214fec',
      messagingSenderId: '1099440706181',
      projectId: 'facebook-c2fa2',
      storageBucket: 'facebook-c2fa2.firebasestorage.app',
      databaseURL:
      'https://facebook-c2fa2-default-rtdb.firebaseio.com');

  static const FirebaseOptions ios = FirebaseOptions(                                                                                                                                                                                                                                                                                                                                                                                                                                            
      apiKey: 'AIzaSyApxK8eCa5LN4EBa62EFI9EBZbx3iDmldI',
      appId: '1:1099440706181:android:01de487ce12539f2214fec',
      messagingSenderId: '1099440706181',
      projectId: 'facebook-c2fa2',
      storageBucket: 'facebook-c2fa2.firebasestorage.app',
      iosBundleId: 'com.iftee2.firebase_facebook1',
      databaseURL:
      'https://facebook-c2fa2-default-rtdb.firebaseio.com');
}