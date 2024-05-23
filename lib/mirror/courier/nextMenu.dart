import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ordering/bottomNavigation/shopingCar.dart';
import 'package:ordering/mirror/courier/cote.dart';


class NextMenu extends StatefulWidget {
  const NextMenu({super.key});

  @override
  State<NextMenu> createState() => _NextMenuState();
}

class _NextMenuState extends State<NextMenu> {


  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new,
            color: Colors.white,
          ),
        ),
      ),
      backgroundColor: Colors.deepPurple,
      body: Column(
        children: <Widget>[

          Container(
            padding: const EdgeInsets.only(top:55),
            child: Image.asset("assets/icons/burger_sandwich 3.png"),
          ),
          const SizedBox(
            height: 90,
          ),
          Container(
            width: 430,
            height:400 ,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(70)
              ),
            ),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Padding(
                      padding:  const EdgeInsets.only(top: 20),
                      child: Container(
                        width: 100,
                        height: 52,
                        decoration: const BoxDecoration(
                            color: Colors.deepPurple,
                            borderRadius: BorderRadius.all(
                              Radius.circular(40),
                            )
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Icon(Icons.star_outlined,
                              color: Colors.amber,
                            ),
                            Text("4.8",
                              style: TextStyle(
                                  fontSize: 23,
                                  color: Colors.white
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox( width: 160,),
                    const Padding(
                      padding: EdgeInsets.only(top: 20, ),
                      child: Text("\$20",
                        style: TextStyle(
                          color: Color(0xFFC9AA05),
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    const Padding(
                      padding: EdgeInsets.only(left: 30),
                      child: Text("Mol go’shti burgeri",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    const SizedBox( width: 80,),
                    Container(
                      child: Row(

                        children: [
                          IconButton(onPressed: (){},
                            icon: Image.asset("assets/icons/Minus Sign.png"),),
                          const Text("1",
                            style: TextStyle(
                                fontSize: 18
                            ),),
                          IconButton(onPressed: (){},
                            icon: Image.asset("assets/icons/Add.png"),),
                        ],
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 90),
                  child: Text(" Big juicy beef burger with cheese, lettuce,\n tomato, onions and special sauce !",
                    style: TextStyle(
                        color: Colors.black
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
                const SizedBox(height: 10,),
                const Padding(
                  padding: EdgeInsets.only(right: 290),
                  child: Text("Qoshish",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox( height: 10,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Cote(
                      imag: "assets/icons/Rectangle 11.png",
                    ),
                    Cote(
                      imag: "assets/icons/Rectangle 13.png",
                    ),
                    Cote(
                      imag: "assets/icons/Rectangle 14.png",
                    ),
                  ],
                ),
                const SizedBox( height: 30,),
                Container(
                  width: 311,
                  height: 68,
                  decoration: const BoxDecoration(
                      color: Color(0xFF462B9C),
                      borderRadius: BorderRadius.all(
                          Radius.circular(20)
                      )
                  ),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius: const BorderRadius.all(
                          Radius.circular(20)
                      ),
                      onTap: (){
                        // Navigator.push(context, MaterialPageRoute(builder: (context){
                        //   return const ShopingCar();
                        // }));
                      },
                      child: const Align(
                        alignment: Alignment.center,
                        child: Text("Add to cart",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 27,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}





