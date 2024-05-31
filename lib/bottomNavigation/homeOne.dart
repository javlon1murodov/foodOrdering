import 'package:flutter/material.dart';
import 'package:ordering/mirror/courier/ThreeCategory.dart';
import 'package:ordering/mirror/courier/bigCategory.dart';
import 'package:ordering/mirror/courier/searchTwo.dart';

class HomeOne extends StatefulWidget {
  const HomeOne({super.key});

  @override
  State<HomeOne> createState() => _HomeOneState();
}

class _HomeOneState extends State<HomeOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            const SearchTwo(),
            const SizedBox(height: 25,),
            const Bigcategory(),
            const Padding(
              padding: EdgeInsets.only(top: 20, left: 20),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text("Aksiyalar",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
            Container(
              width: 378,
              height: 137,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
                color: Color(0xFF9577F2),
              ),
              child: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Row(
                  children: <Widget>[
                    Column(
                      children:<Widget>[
                        Container(
                          padding: const EdgeInsets.only(right: 40),
                          child: const Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Column(
                              children: <Widget>[
                                Text("Bugungi taklif",
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.white
                                  ),),
                                Padding(
                                  padding: EdgeInsets.only(left: 33 , top: 8),
                                  child: Text("Fri qutisi bepul",style:TextStyle(
                                      color: Colors.white,
                                      fontSize: 22
                                  ),),
                                ),
                              ],
                            ),
                          ),
                        ),

                        const Padding(
                          padding:  EdgeInsets.only(left: 20, top: 10),
                          child: Text("150 dan yuqori barcha \nbuyurtmalar bo'icha",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.white
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox( width: 20,),
                    Image.asset("assets/icons/French-fries-b9e3e0c 1.png"),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 270, top: 15),
              child: Text("Barchasi",style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500
              ),),
            ),
            const Column(
              children:<Widget> [
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:<Widget> [
                   ThreeCategory(
                      image: "assets/icons/burger_sandwich 2.png",
                      title: "Mol go'shti burger",
                      narx: "\$20",
                    ),
                    ThreeCategory(
                      image: "assets/icons/burger_sandwich 2.png",
                      title: "Mol go'shti burger",
                      narx: "\$20",
                    ),
                    
                  ],
                ),
                 SizedBox(height: 25,),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:<Widget> [
                   ThreeCategory(
                      image: "assets/icons/burger_sandwich 2.png",
                      title: "Mol go'shti burger",
                      narx: "\$20",
                    ),
                    ThreeCategory(
                      image: "assets/icons/burger_sandwich 2.png",
                      title: "Mol go'shti burger",
                      narx: "\$20",
                    ),
                    
                  ],
                ),
              ],
            )


          ],
        ),
      ),
    );
  }
}
