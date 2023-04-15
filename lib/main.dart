import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:instaclone/Responsive/mobile_Screen_Layout.dart';
import 'package:instaclone/Responsive/responsive_Screen_Layout.dart';
import 'package:instaclone/Responsive/web_Screen_Layout.dart';
import 'package:instaclone/Utils/customColor.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
