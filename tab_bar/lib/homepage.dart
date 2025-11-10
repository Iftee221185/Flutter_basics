import 'package:flutter/material.dart';
import 'package:tababr/camera.dart';
import 'package:tababr/contacts.dart';
import 'package:tababr/setting.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("tab bar"),
            bottom: TabBar(
              indicatorColor: Colors.red,
              labelColor: Colors.white,
              tabs: [
                Tab(
                  icon: Icon(Icons.camera,color: Colors.pink,),
                  text: "Contact",

                ),
                Tab(
                  icon: Icon(Icons.camera,color: Colors.pink,),
                  text: "Contact",

                ),
                Tab(
                  icon: Icon(Icons.camera,color: Colors.pink,),
                  text: "Contact",

                ),
              ],
            )
        ),
        body: TabBarView(
          children: [
            Camera(),
            Setting(),
            Contacts(),
          ],
        ),

      ),
    );
  }
}
