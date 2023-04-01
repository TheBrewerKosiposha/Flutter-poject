 import 'package:flutter/material.dart';
import 'package:mastak/consts/colors.dart';
import 'package:mastak/views/splash_screen/splash_screen.dart';
 import 'package:get/get.dart';
 import 'package:firebase_core/firebase_core.dart';


void main()  {
  WidgetsFlutterBinding.ensureInitialized();
 Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}): super (key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mastak',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(
            color: darkFontGrey,
          ),
          backgroundColor:  Colors.transparent
        ),
        fontFamily: 'Roboto',
      ),
home:const SplashScreen()
    );
  }
}
