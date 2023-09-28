import 'package:flutter/material.dart';
import 'package:daddy/yes.dart';
import 'package:daddy/no.dart';
void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false ,
      home: MyApp(),
      )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color(0xff081b25),
      body: 
        Padding(padding: EdgeInsets.symmetric(horizontal:30, vertical:300),
        child: Column(children:[
          Text("ARE YOU MR SEGUN ADENIJI WILLIAMS?", textAlign: TextAlign.center,
           style:TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color :Colors.white)),
           SizedBox(height: 30,),
           Row(children: [
            Padding(padding: EdgeInsets.all(10)),
            InkWell(
              onTap:(){Navigator.push(context, MaterialPageRoute(builder:(context)=> Yes()));},
          child:Container(height:50, width:150,
      
        alignment: Alignment.center,
           decoration: BoxDecoration(
    border: Border.all(
      color: Colors.white, // Border color
      width: 5.0,           // Border width
      style: BorderStyle.solid,
    ),
    borderRadius: BorderRadius.circular(20.0),
     gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.red, Colors.blue], // Gradient colors
              ),
    ),
          child: Text("Yes", style:TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color :Colors.white)
          )),),
          SizedBox(width:20),
           InkWell(
              onTap:(){Navigator.push(context, MaterialPageRoute(builder:(context)=> No()));},
           child:Container(height:50, width:150,
      
        alignment: Alignment.center,
           decoration: BoxDecoration(
    border: Border.all(
      color: Colors.white, // Border color
      width: 5.0,           // Border width
      style: BorderStyle.solid,
    ),
     gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.blue, Colors.red], // Gradient colors
              ),
    borderRadius: BorderRadius.circular(20.0),
    ),
          child: Text("No", style:TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color :Colors.white)
          ))),
          ]),
        ])
        )

      
      
    );}}