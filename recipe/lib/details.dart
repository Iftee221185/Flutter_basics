import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Details extends StatefulWidget {
  final String i;
  final String t;
  final String d;

  const Details({super.key,required this.i,required this.t,required this.d});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: Colors.red,
        title: Text("Recipe Details", style: GoogleFonts.acme(
            color: Colors.white,
            fontSize: 30,
        ),),
      ),
     body: SingleChildScrollView(
       scrollDirection: Axis.vertical,
       child: Column(
         children: [
           Row(
             children: [
               Image.asset("assets/images/${widget.i}",
                 width: MediaQuery.sizeOf(context).width,
                 height: MediaQuery.sizeOf(context).height/2,
                 fit: BoxFit.fitWidth,
               )
             ],
           ),
           Row(
             children: [
               Container(
                 height: 100,
                 width: MediaQuery.sizeOf(context).width,
                 decoration: const BoxDecoration(
                   color: Colors.red,
                 ),
                 child: Center(child: Text(widget.t, style: GoogleFonts.acme(
                   color: Colors.white,
                   fontWeight: FontWeight.bold,
                   fontSize: 30,
                 ),)),
               )
             ],
           ),
           Flexible(
             child: Padding(
               padding: const EdgeInsets.all(16.0),
               child: Text(widget.d,style: GoogleFonts.acme(
                 fontSize: 15,
               ),),
             ),
           )

         ],


       ),
     ),
    );
  }
}
