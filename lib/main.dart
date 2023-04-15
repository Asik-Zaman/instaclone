import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:instaclone/Responsive/mobile_Screen_Layout.dart';
import 'package:instaclone/Responsive/responsive_Screen_Layout.dart';
import 'package:instaclone/Responsive/web_Screen_Layout.dart';
import 'package:instaclone/Utils/customColor.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDn4JL05GVHRJQHdxUOU_y--8Kp-Iy5oyc",
            appId: "1:880379209599:web:641596b8cf1482baacdc4a",
            messagingSenderId: "880379209599",
            projectId: "instaclone-5c69a",
            storageBucket: "instaclone-5c69a.appspot.com"));
  } else {
    await Firebase.initializeApp();
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark()
            .copyWith(scaffoldBackgroundColor: mobileBackgroundColor),
        home: ResponsiveScreenLayout(
          mobileScreenLayout: MobileScreenLayout(),
          webScreenLayout: WebScreenLayout(),
        ));
  }
}
