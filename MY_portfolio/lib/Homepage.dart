import 'package:flutter/material.dart';
import 'package:untitled1/personal_info.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(
          child: Text("BIOGRAPHY", style: TextStyle(
              color: Colors.white,
              fontSize: 30
          ),),
        ),
      ),
    body: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
      children: [
        SizedBox(height: 20,),
        Center(child: Image.asset("assets/images/photo.jpeg",height: 200,width: 200,)),
        SizedBox(height: 20,),
        Center(
          child: Text("Iftehad Kamal",style: TextStyle(
            color: Colors.blue,
            fontSize: 30,

          ),),
        ),
        Center(
          child: Text("01660106043 & iftehadiftee500@gmail.com",style: TextStyle(
            color: Colors.blue,
            fontSize: 30,

          ),),
        ),
        SizedBox(height: 20,),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>PersonalInfo()));
            },
            child: Container(
              height: 70,
              width: 500,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(20),
                color: Colors.blue,
              ),child: Center(
                child: Text("Personal Info",style: TextStyle(
                color: Colors.white,
                  fontSize: 35,
                      ),),
              ),
            ),
          ),
        SizedBox(height: 21,),
          ElevatedButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>PersonalInfo()));
            },
            child: Container(
            height: 70,
            width: 500,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(20),
              color: Colors.blue,
            ),child: Center(
            child: Text("Skills",style: TextStyle(
              color: Colors.white,
              fontSize: 35,
            ),),
                    ),
                    ),
          ),
        SizedBox(height: 20,),
          Container(
          height: 70,
          width: 500,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(20),
            color: Colors.blue,
          ),child: Center(
          child: Text("Education",style: TextStyle(
            color: Colors.white,
            fontSize: 35,
          ),),
        ),
        ),
        SizedBox(height: 20,),
          Container(
          height: 70,
          width: 500,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(20),
            color: Colors.blue,
          ),child: Center(
          child: Text("Experience",style: TextStyle(
            color: Colors.white,
            fontSize: 35,
          ),),
        ),
        ),
        SizedBox(height: 20,),
      ],
      ),
    ),
    );
  }
}
