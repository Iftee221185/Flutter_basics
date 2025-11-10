import 'package:flutter/material.dart';
import 'package:tab_bar2/camera.dart';
import 'package:tab_bar2/contacts.dart';
import 'package:tab_bar2/setting.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int selectedIndex=0;
  void ontabbed(int index)
  {
    setState(() {
      selectedIndex=index;
    });

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("botom navigation"),
      ),
      body: Center(
        child: pages.elementAt(selectedIndex),
      ),

      bottomNavigationBar: BottomNavigationBar(
        items:<BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home),
            label: "Home",
            backgroundColor: Colors.green
          ),
          BottomNavigationBarItem(icon: Icon(Icons.contact_emergency),
              label: "Home",
              backgroundColor: Colors.blue
          ),
          BottomNavigationBarItem(icon: Icon(Icons.settings),
              label: "Home",
              backgroundColor: Colors.red
          ),
        ],
       // type: BottomNavigationBarType.fixed,
        type: BottomNavigationBarType.shifting,
        currentIndex: selectedIndex,
        selectedItemColor: Colors.blue,
        iconSize: 40,
        onTap: ontabbed,
      ),
    );
  }


  List<Widget> pages= <Widget> [
    Camera(),
    Contacts(),
    Setting(),
  ];
}
