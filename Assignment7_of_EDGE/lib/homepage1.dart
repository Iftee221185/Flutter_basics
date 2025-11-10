
import 'package:assignment7/add_notes.dart';
import 'package:assignment7/students1.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Homepage1 extends StatefulWidget {
  const Homepage1({super.key});

  @override
  State<Homepage1> createState() => _Homepage1State();
}

class _Homepage1State extends State<Homepage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
            Card(
              elevation: 10,
              color: Colors.grey.shade50,
              child: GestureDetector(
                onTap: (){
                  Get.to(()=>HomePage());
                },
                child: Container(
                   height: MediaQuery.of(context).size.height/9,
                   width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,

                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.person,size: 50,color: Colors.greenAccent,),
                      Text("Students",style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),)
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Card(
            elevation: 10,
            color: Colors.grey.shade50,
            child: GestureDetector(
              onTap: (){
                 Get.to(()=>AddNotes());
              },
              child: Container(
                height: MediaQuery.of(context).size.height/9,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,

                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.add,size: 50,color: Colors.greenAccent,),
                    Text("Add Students",style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),)
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
