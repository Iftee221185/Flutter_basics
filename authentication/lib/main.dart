import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_facebook1/firebase/firebase_options.dart';
import 'package:firebase_facebook1/login/login_page.dart';
import 'package:firebase_facebook1/login/profile_page.dart';
import 'package:firebase_facebook1/login/register_page.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LoginPage(),
      initialRoute: '/',
      routes: {
        'register' : (context)=> const RegisterPage(),
        'profile' : (context)=> const ProfilePage(),
      },
    );
  }
}


