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
      body:Column(
        children: [
          Image.asset("assets/image/image.jpg",width: 200,height: 200,),
          SizedBox(height: 20,),
          Text("ampiler"),
          //from online
          Image.network("https://m.media-amazon.com/images/M/MV5BODRiZWZlMzktZGJiOS00NTE5LTg3ZjQtMDYxM2JlYmE1NmE4XkEyXkFqcGc@._V1_.jpg",height: 100,width: 100
            ,)
        ],
      )
    );
  }
}
