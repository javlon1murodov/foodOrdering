import 'package:flutter/material.dart';
import 'package:ordering/mirror/courier/categorya.dart';

class ShopingCar extends StatefulWidget {
  const ShopingCar({super.key});

  @override
  State<ShopingCar> createState() => _ShopingCarState();
}

class _ShopingCarState extends State<ShopingCar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children:<Widget> [
          const Category(
            title: "Pizza Fries",
            image: "assets/icons/Pizza-fries 2.png",
            son: "\$32",

          ),
           const Category(
            title: "Beef Burger",
            image: "assets/icons/burger_sandwich 1.png",
             son: "\$20",
          ),
          const SizedBox(height: 20,),
          const Padding(
            padding: EdgeInsets.only(right: 225),
            child: Text("Payment Method",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Material(
                color: Colors.transparent,
                child: InkWell(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20)
                  ),
                  onTap: (){},
                  child: Container(
                   width:359,
                    height: 89,
                    decoration: const BoxDecoration(
                      color: Color(0xFFEFEEEE),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                           Image.asset("assets/icons/Rectangle 119.png"),
                        const Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: Column(
                            children: <Widget>[
                              Text("Jenius Card",
                              style: TextStyle(
                                fontSize: 18
                              ),
                              ),
                              Text("0274 7414 ***")
                            ],
                          ),
                        ),
                        IconButton(onPressed: (){},
                            icon: const Icon(Icons.arrow_forward_ios_outlined),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox( height: 30,),
          Container(
            padding: const EdgeInsets.only(),
            child: const Row(

              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text("Subtotal",
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF6F6D6D)
                ),
                ),
                SizedBox(width:140,),
                Text("\$52",
                  style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF6F6D6D)
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 13,),

          Container(
            padding: const EdgeInsets.only(),
            child: const Row(

              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text("Taxi 10%",
                  style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF6F6D6D)
                  ),
                ),
                SizedBox(width:140,),
                Text("\$5",
                  style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF6F6D6D)
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 20,),

          Container(
            padding: const EdgeInsets.only(),
            child: const Row(

              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text("Total",
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                    fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(width:140,),
                Text("\$57",
                  style: TextStyle(
                      fontSize: 22,
                      color: Color(0xFFC9AA05),
                      fontWeight: FontWeight.bold
                  ),
                )
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: (){},
                borderRadius: const BorderRadius.all(
                  Radius.circular(25)
                ),
                child: Container(
                  width: 311,
                  height: 68,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(25),
                    ),
                    color: Color(0xFF462B9C)
                  ),
                  child: const Align(
                    alignment: Alignment.center,
                    child: Text("Order",
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
          )
        ],
      ),
    );
  }
}

