import 'package:flutter/material.dart';
import 'package:ordering/bottomNavigation/homeOne.dart';
import 'package:ordering/bottomNavigation/serch.dart';
import 'package:ordering/bottomNavigation/shopingCar.dart';
import 'package:ordering/widget/accoun/accoun.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int myCurrentIndex =0;
  List pages=[
    const HomeOne(),
    const SerchOne(),
    const ShopingCar(),
    const Accoun(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading:false,
        title: const Text("Menu",
          style:TextStyle(
              fontSize: 42
          ),
        ),
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return const Accoun();
            }));
          },
            icon: const Icon(Icons.account_circle,size: 42,),
          ),
        ],
      ),
      bottomNavigationBar: bar(),
      body:pages[myCurrentIndex] ,
    );
  }

  Container bar() {
    return Container(
      child: BottomNavigationBar(
        iconSize: 33,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.deepPurple,
        currentIndex: myCurrentIndex,
        onTap: (index){
          setState(() {
            myCurrentIndex=index;
          });
        },
         items: [
           BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
           BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
           BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined), label: ""),
           BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined), label: "")
        ],
      ),
    );
  }
}


