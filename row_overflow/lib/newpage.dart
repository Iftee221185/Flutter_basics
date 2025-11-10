import 'package:flutter/material.dart';

class Newpage extends StatelessWidget {
  const Newpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("button"),
      ),
      body: Text("this is a new page"),
    );
  }
}
