

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe/homepge.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
  startime() async {
    Timer(const Duration(seconds: 5), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const Homepage()));
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startime();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/images/t.png",height: 250,width: 250,),

            const SizedBox(height: 15,),
            Text("My Recipe",style: GoogleFonts.acme(
              fontWeight: FontWeight.bold,
              color: Colors.redAccent,
              fontSize: 30,
            ),),
            const SizedBox(height: 15,),
            const CircularProgressIndicator(
              color: Colors.redAccent,

            )
          ],
        ),
      ),
    );
  }
}
