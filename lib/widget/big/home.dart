import 'package:flutter/material.dart';
import 'package:ordering/widget/big/dress.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Column(
        children: <Widget>[
          Search(),
          const SizedBox(height: 50),
          const Text("Buyurtmachi",style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 42
          ),),
          const SizedBox(height: 80),
          Container(
            width: 227,
            height: 68,
            decoration:  const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                  Radius.circular(25)
              ),
            ),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return const Dressed();
                  }));
                },
                borderRadius:  const BorderRadius.all(
                    Radius.circular(25)
                ),
                child:  const Align(
                  alignment: Alignment.center,
                  child: Text("Boshlash",
                    style:TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 27,
                        color: Colors.deepPurple
                    ) ,
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

class Search extends StatelessWidget {
  const Search({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  const EdgeInsets.only(top: 140),
      child: Center(child: Image.asset("assets/icons/Ellipse 1.png")),
    );
  }
}


