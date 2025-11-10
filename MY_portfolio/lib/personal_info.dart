import 'package:flutter/material.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Personal Info",style: TextStyle(
          color:Colors.red,
        ),),
      ),
      body: Text("my name is iftee"),
    );
  }
}
