import 'package:assignment7/firebase/firebase_options.dart';
import 'package:assignment7/homepage.dart';
import 'package:assignment7/homepage1.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Check if Firebase is already initialized before initializing it
  try {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,  // This is assuming you're using firebase_options.dart
    );
  } catch (e) {
    // Firebase has already been initialized
    print("Firebase initialization failed: $e");
  }
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
      home: const Homepage1(),
    );
  }
}


