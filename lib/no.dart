import 'package:flutter/material.dart';
class No extends StatefulWidget {
  const No({super.key});

  @override
  State<No> createState() => _NoState();
}

class _NoState extends State<No> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor:const Color(0xff081b25),
       appBar: AppBar(backgroundColor: Colors.transparent),
       body:
        Padding(padding: EdgeInsets.symmetric(horizontal:30, vertical:300),child:
        Text('Sorry, This is not for you :)',textAlign: TextAlign.center,
           style:TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color :Colors.white)))
       );
  }
}