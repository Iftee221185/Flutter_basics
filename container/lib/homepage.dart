import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text("Container",style: TextStyle(
            color: Colors.white,
          ),),
        ),
      ),
      body:Container(
        height: 200,
        width: 200,
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: Colors.blue,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text("I am container"),
      ),
    );
  }
}
