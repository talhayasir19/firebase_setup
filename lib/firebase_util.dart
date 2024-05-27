import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart'
    show TargetPlatform, defaultTargetPlatform, kIsWeb;

class FirebaseUtil {
  // static const projectId = 'sunset-3548b';
  // static const projectId = 'fir-a97fe';
  static const projectId = 'sunset-60819';

  // static const messagingSenderId = '179934924094';
  // static const messagingSenderId = '244854578478';
  static const messagingSenderId = '45288289297';

  static FirebaseOptions get currentPlatformFlavor {
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
      case TargetPlatform.fuchsia:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static FirebaseOptions get android {
    // const apiKey = 'AIzaSyDA5YVH6O6kFNva58D5bf3K93bSJjSkisI';
    // const apiKey = 'AIzaSyBmDloh_15OLoJkr4tOxdh22drgArhScAM';
    const apiKey = 'AIzaSyBjVRjphjxh9IUq7NLl9PgFGBrSDUr_M3U';

    return const FirebaseOptions(
      apiKey: apiKey,
      projectId: projectId,
      messagingSenderId: messagingSenderId,
      // appId: '1:179934924094:android:87bed6966e0e63ede7306',
      // appId: '1:244854578478:android:3ad32f89c702fe8da62ebf',
      appId: '1:45288289297:android:e15355dae0a002b60eadb0',
    );
  }

  static FirebaseOptions get ios {
    // const apiKey = 'AIzaSyCeaC-57bWRtKwLYl4Z-GnQDcdxewu6Jy8';
    // const apiKey = 'AIzaSyCp4NCLsXttZJiUq-IkmJ2zCT5CQFBuU-I';
    const apiKey = 'AIzaSyD898Q7WtmyMx3xKxKynF673wlGiyi8--M';

    return const FirebaseOptions(
      apiKey: apiKey,
      projectId: projectId,
      messagingSenderId: messagingSenderId,
      // appId: '1:179934924094:ios:c90d0f3faf17b74ee7306f',
      // appId: '1:244854578478:ios:a9c3fc1a7f64ad82a62ebf',
      appId: '1:45288289297:ios:5d845d9387d893d10eadb0',
    );
  }
}
