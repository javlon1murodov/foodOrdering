import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final String image;
  final String titel;
  final bool isDone;
  const Category({
    super.key,
    required this.image,
    required this.titel,
    this.isDone = false,
  });

  @override
  Widget build(BuildContext context) {
    return
      Column(
        children:<Widget> [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(20),
              ),
              color: isDone ? const Color(0xFF462B9C):const Color(0xFFEFEEEE),
            ) ,
            child:Image.asset(image),
          ),
          const SizedBox(height: 5,),
          Text(titel,
            style: const TextStyle(
                color: Colors.black,
                fontSize: 17
            ),)
        ],
      );

  }
}