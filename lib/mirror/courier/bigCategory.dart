import 'package:flutter/material.dart';
import 'package:ordering/mirror/courier/image.dart';

class Bigcategory extends StatelessWidget {
  const Bigcategory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child:  Row(
        children:<Widget> [
          SizedBox(width: 20,),
          Category(
            image: "assets/icons/Ellipse 2.png",
            titel: "Barchasi",
            isDone: true,
          ),
          SizedBox(width: 15,),
          Category(
            image: "assets/icons/burger_sandwich 1.png",
            titel: "Fast food",
            isDone: false,
          ),
          SizedBox(width: 15,),
          Category(
            image: "assets/icons/3626 1.png",
            titel: "Mevali",
            isDone: false,
          ),
          SizedBox(width: 15,),
          Category(
            image: "assets/icons/burger_sandwich 1.png",
            titel: "Yeguliklar",
            isDone: false,
          ),
          SizedBox(width: 15,),
          Category(
            image: "assets/icons/Ellipse 2.png",
            titel: "Salat",
            isDone: false,
          ),
          SizedBox(width: 15,),
          Category(
            image: "assets/icons/3626 1.png",
            titel: "Mevali",
            isDone: false,
          ),
          SizedBox(width: 20,),
        ],
      ),
    );
  }
}
