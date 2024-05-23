import 'package:flutter/material.dart';
import 'package:ordering/mirror/courier/image.dart';

class Bigcategory extends StatelessWidget {
  const Bigcategory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children:<Widget> [
        Category(
          image: "assets/icons/Ellipse 2.png",
          titel: "Barchasi",
          isDone: true,
        ),
        Category(
          image: "assets/icons/burger_sandwich 1.png",
          titel: "Fast food",
          isDone: false,
        ),
        Category(
          image: "assets/icons/3626 1.png",
          titel: "Meva",
          isDone: false,
        ),
        Category(
          image: "assets/icons/burger_sandwich 1.png",
          titel: "Yeguliklar",
          isDone: false,
        ),
      ],
    );
  }
}
