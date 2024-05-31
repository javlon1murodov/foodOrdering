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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            Align(
              alignment: Alignment.center,
              child: Container(
                margin: const EdgeInsets.only(top: 10),
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
            SizedBox(height: 60,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:<Widget> [
                SerchCad(
                  rasim: "assets/images/4.png",
                  text: "The Halal Guys",
                ),
                SerchCad(
                  rasim: "assets/icons/bg.png",
                  text: "Popeyes 1426 Flmst",
                ),
              ],
            ),
            SizedBox(height: 17,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:<Widget> [
                SerchCad(
                  rasim: "assets/images/bg0.png",
                  text: "Mixt - Yerba Buena",
                ),
                SerchCad(
                  rasim: "assets/icons/bg.png",
                  text: "The Halal Guys",
                ),
              ],
            ),
            SizedBox(height: 17,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:<Widget> [
                SerchCad(
                  rasim: "assets/images/bg1.png",
                  text: "The Halal Guys",
                ),
                SerchCad(
                  rasim: "assets/images/bg2.png",
                  text: "The Halal Guys",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SerchCad extends StatelessWidget {
  final String rasim;
  final String text;
  const SerchCad({
    super.key,
    required this.rasim,
    required this.text,

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8)
      ),
      child: Column(
        children: <Widget>[
          Image.asset("$rasim"),
             Container(
               margin: EdgeInsets.only(right: 25),
               child: Text(text,
                 style: TextStyle(
                 ),
               ),
             ),
          Row(
            children: [
              Text("\$\$"),
              SizedBox(width: 10,),
              Text("Chinese",
              style: TextStyle(
                color: Color(0xFF010F07)
              ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
