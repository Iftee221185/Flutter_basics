import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text("my first app",style: TextStyle(
            color: Colors.white,
          ),),
        ),
      ),
      body: Center(child: Text("this is body")),
    );
  }
}
