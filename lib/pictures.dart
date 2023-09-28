import 'package:equatable/equatable.dart';
class Category extends Equatable{
  //final String name;
  final String image;

  const Category({
    //required this.name,
    required this.image,
  });

  @override
  List<Object?> get props =>[image];

  static List<Category> categories = [
    const Category(
     // name: '',
      image: 'pictures/IMG_0216.jpg'
    ),
     const Category(
     // name: 'b',
      image: 'pictures/IMG_9348.jpg'
    ),
     const Category(
     // name: 'a',
      image: 'pictures/IMG_9375.jpg'
    ),
   
  ];
}
