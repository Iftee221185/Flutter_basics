import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Basic List"),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
            onTap: (){
              Fluttertoast.showToast(msg: "this is home");
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            iconColor: Colors.amber,
            textColor: Colors.red,
            title: Text("Person"),
            onTap: (){
              Fluttertoast.showToast(msg: "this is person");
            },
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
            onTap: (){
              Fluttertoast.showToast(msg: "this is home");
            },
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
            onTap: (){
              Fluttertoast.showToast(msg: "this is home");
            },
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
            onTap: (){
              Fluttertoast.showToast(msg: "this is home");
            },
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
            onTap: (){
              Fluttertoast.showToast(msg: "this is home");
            },
          ),
        ],
      ),
    );
  }
}
