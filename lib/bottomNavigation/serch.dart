import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SerchOne extends StatefulWidget {
  const SerchOne({super.key});

  @override
  State<SerchOne> createState() => _SerchOneState();
}

class _SerchOneState extends State<SerchOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: const EdgeInsets.only(top: 50),
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
              width: 380,
              height: 58,
              decoration: const BoxDecoration(
                color: Color(0xFFEBE8E8),
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.search),
                  hintText: "Izlash",
                    border: InputBorder.none
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
