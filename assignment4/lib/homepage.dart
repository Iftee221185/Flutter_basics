import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(
        children:<Widget>[
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: AppBar(
              toolbarHeight: 170,
              backgroundColor: Colors.greenAccent,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("ONLINE SOFT SELL"),
                      SizedBox(height: 5,),
                      Text("Hello, Admin"),
                    ],
                  ),
                  Icon(Icons.g_translate)
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(30, 120, 30, 0),
            child: GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 30,
              crossAxisSpacing: 30,
              children: [
                Card(
                  elevation: 10,
                  color: Colors.grey.shade50,
                  child: Container(

                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,

                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/icons/customer.png",),
                        Text("CUSTOMER",style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,

                        ),)
                      ],
                    ),
                  ),
                ),
                Card(
                  elevation: 10,
                  color: Colors.grey.shade50,
                  child: Container(

                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,

                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/icons/customer.png",),
                        Text("CUSTOMER",style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,

                        ),)
                      ],
                    ),
                  ),
                ),
                Card(
                  elevation: 10,
                  color: Colors.grey.shade50,
                  child: Container(

                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,

                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/icons/customer.png",),
                        Text("CUSTOMER",style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,

                        ),)
                      ],
                    ),
                  ),
                ),
                Card(
                  elevation: 10,
                  color: Colors.grey.shade50,
                  child: Container(

                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,

                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/icons/customer.png",),
                        Text("CUSTOMER",style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,

                        ),)
                      ],
                    ),
                  ),
                ),
                Card(
                  elevation: 10,
                  color: Colors.grey.shade50,
                  child: Container(

                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,

                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/icons/customer.png",),
                        Text("CUSTOMER",style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,

                        ),)
                      ],
                    ),
                  ),
                ),
                Card(
                  elevation: 10,
                  color: Colors.grey.shade50,
                  child: Container(

                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,

                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/icons/customer.png",),
                        Text("CUSTOMER",style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,

                        ),)
                      ],
                    ),
                  ),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
