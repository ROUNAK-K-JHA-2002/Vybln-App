import 'package:flutter/material.dart';
import 'package:vybln/responsive/Mobile_Screen_Layout.dart';
import 'package:vybln/responsive/Web_Screen_Layout.dart';
import 'package:vybln/responsive/responsive_layout.dart';
import 'package:vybln/utils/colors.dart';

void main() {
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
