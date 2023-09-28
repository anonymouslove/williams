import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:daddy/pictures.dart';
class Yes extends StatefulWidget {
  const Yes({super.key});

  @override
  State<Yes> createState() => _YesState();
}

class _YesState extends State<Yes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor:const Color(0xff081b25),
       appBar: AppBar(backgroundColor: Colors.transparent),
       body: Column(children:[Padding(padding: EdgeInsets.symmetric(horizontal:30, vertical:10), child:Container(
            height:300.0,
           child:CarouselSlider(
        options: CarouselOptions(
          aspectRatio: 2.0,
          enlargeCenterPage: true,
          enableInfiniteScroll: false,
          initialPage: 2,
          autoPlay: true,
        ),
        items: Category.categories.map((category) => HeroCarouselCard(category: category)).toList(),
      )),),
     // SizedBox(height: 10),
      Padding(padding: EdgeInsets.all(20),
     child:  Container(alignment: Alignment.center,
     height:420,
           decoration: BoxDecoration(
    border: Border.all(
      color: Colors.transparent, // Border color
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
    child: Container(height:400,
    decoration: BoxDecoration( color: Color(0xff081b25),border: Border.all(
      color: Color(0xff081b25),// Border color
      width: 5.0,           // Border width
      style: BorderStyle.solid,
    ), borderRadius: BorderRadius.circular(20.0),),
     //color:Color(0xff081b25),
    child:Text('HIIIIII MY DADDY.                                              '
      'This website was specially created for you just because I wanted to express my gratitude for everything you do for our family. Your love and support mean the world to us.' +
'My lovely daddy, I would also like to request for an increase in allowance because the prices of things have drastically gone up and my current allowance has not been able to suffice.' +
'I believe that a slight increase in my allowance would greatly assist me in covering my day-to-day expenses.'+
'Dad, I truly appreciate your consideration of this request. I love you with all my heart. Thank you in advance my daddy.'
,textAlign: TextAlign.center,
           style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color :Colors.white))))),

    
   ]) );
  }
}
class HeroCarouselCard extends StatelessWidget {
final Category category;
  const HeroCarouselCard({
    required this.category,
  });


  @override
  Widget build(BuildContext context) {
    return  Container(
         width:5000,
         height:2000,
            margin:const  EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                child: Stack(
                  children: <Widget>[
                    Image.asset(category.image, fit: BoxFit.cover, width: 3000.0),
                    Positioned(
                      bottom: 0.0,
                      left: 0.0,
                      right: 0.0,
                      child: Container(
                        decoration:const  BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(200, 0, 0, 0),
                              Color.fromARGB(0, 0, 0, 0)
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                        padding:const  EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                       /* child: Text(
                          category.name,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),*/
                      ),
                    ),
                  ],
                )),
          );

  }
}
