import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final products=List<String>.generate(100,(index)=>"Products $index");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Long List"),
      ),
      body:ListView.builder(itemBuilder: (context,index){
        return ListTile(
          leading: Icon(Icons.home),
          title: Text("hello "+products[index]),

        );
      }),
    );
  }
}
