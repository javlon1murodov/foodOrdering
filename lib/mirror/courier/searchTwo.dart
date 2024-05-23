import 'package:flutter/material.dart';

class SearchTwo extends StatelessWidget {
  const SearchTwo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        margin: const EdgeInsets.only(top: 20),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        width: 358,
        height: 58,
        decoration: const BoxDecoration(
          color: Color(0XFFEFEEEE),
          borderRadius: BorderRadius.all(
              Radius.circular(30)
          ),
        ),
        child: const TextField(
          decoration: InputDecoration(
              hintText:"Izlash",
              icon: Icon(Icons.search),
              border: InputBorder.none
          ),

        ),
      ),
    );
  }
}
