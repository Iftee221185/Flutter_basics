import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe/details.dart';

import 'const.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: Colors.red,
        title: Text("Home",style: GoogleFonts.acme(
          color: Colors.white,
          fontSize: 25,
        ),),
      ),
      body: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
        children: [
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Details(i: image1, t: recipe1Name, d: description1)));
            },
            child: Card(
              elevation: 20,
              color: Colors.grey,
              margin: const EdgeInsets.all(30),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.red,
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(Icons.emoji_food_beverage,color: Colors.white,size: 100,),
                      Text(recipe1Name,style: GoogleFonts.acme(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),)
                    ],
                  ),
                )
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Details(i: image2, t: recipe2Name, d: description2, )));
            },
            child: Card(
              elevation: 20,
              color: Colors.grey,
              margin: const EdgeInsets.all(30),
              child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.red,
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(Icons.emoji_food_beverage,color: Colors.white,size: 100,),
                        Text(recipe2Name,style: GoogleFonts.acme(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),)
                      ],
                    ),
                  )
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Details(i: image3, t: recipe3Name, d: description3, )));
            },
            child: Card(
              elevation: 20,
              color: Colors.grey,
              margin: const EdgeInsets.all(30),
              child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.red,
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(Icons.emoji_food_beverage,color: Colors.white,size: 100,),
                        Text(recipe3Name,style: GoogleFonts.acme(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),)
                      ],
                    ),
                  )
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Details(i: image4, t: recipe4Name, d: description4, )));
            },
            child: Card(
              elevation: 20,
              color: Colors.grey,
              margin: const EdgeInsets.all(30),
              child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.red,
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(Icons.emoji_food_beverage,color: Colors.white,size: 100,),
                        Text(recipe4Name,style: GoogleFonts.acme(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),)
                      ],
                    ),
                  )
              ),
            ),
          ),
        ],
      ),
    );
  }
}
