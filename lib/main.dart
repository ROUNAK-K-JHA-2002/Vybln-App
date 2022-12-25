import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:vybln/responsive/Mobile_Screen_Layout.dart';
import 'package:vybln/responsive/Web_Screen_Layout.dart';
import 'package:vybln/responsive/responsive_layout.dart';
import 'package:vybln/utils/colors.dart';

void main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); // Ensures All Flutter widgets are built
  if (kIsWeb) {
    //Checking if platform is web
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: 'AIzaSyDWU0hL30JqP1H43ISiXo2AXBqC4pSk06I',
            appId: '1:919645106149:web:2c6125c022e44a99ea490c',
            messagingSenderId: '919645106149',
            projectId: 'vybln-app',
            storageBucket:
                'vybln-app.appspot.com')); // Initializing Flutter for mobile apps
  } else {
    await Firebase.initializeApp(); // Initializing Flutter for mobile apps
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Vybln',
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor:
              mobileBackgroundColor), //Uses Theme Color from Color file
      home: const ResponsiveLayout(
        mobileScreenLayout: MobileScreenLayout(),
        webScreenLayout: WebScreenLayout(),
      ),
    );
  }
}
