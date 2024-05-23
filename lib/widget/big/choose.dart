import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ordering/mirror/courier/menu.dart';
class Choose extends StatelessWidget {
  const Choose({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Column(
        children: <Widget>[
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(top: 337),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return const Menu();
                    }));
                  },
                  borderRadius: const BorderRadius.all(
                      Radius.circular(15)
                  ),
                  child: Container(
                    width: 292,
                    height: 56,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                        color: Colors.white
                    ),
                    child: const Align(
                        alignment: Alignment.center,
                        child: Text("Buyurtmachi",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 20
                          ),)),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Align(
            alignment: Alignment.center,
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: (){},
                borderRadius: const BorderRadius.all(
                    Radius.circular(15)
                ),
                child: Container(
                  width: 292,
                  height: 56,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                      color: Colors.white
                  ),
                  child: const Align(
                      alignment: Alignment.center,
                      child: Text("Sotuvchi",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20
                        ),)),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Align(
            alignment: Alignment.center,
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: (){},
                borderRadius: const BorderRadius.all(
                    Radius.circular(15)
                ),
                child: Container(
                  width: 292,
                  height: 56,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                      color: Colors.white
                  ),
                  child: const Align(
                      alignment: Alignment.center,
                      child: Text("Kureyer",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20
                        ),)),
                ),
              ),
            ),
          )

        ],
      ),
    );
  }
}
