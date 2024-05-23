import 'package:flutter/material.dart';
import 'package:ordering/mirror/courier/nextMenu.dart';
class ThreeCategory extends StatelessWidget {
  final String image;
  final String title;
  final String narx;
  const ThreeCategory({
    super.key,
    required this.image,
    required this.title,
    required this.narx,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 161,
      height: 214,
      decoration:  const BoxDecoration(
        color: Color(0xFFEBE8E8),
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          child: Column(
            children: <Widget>[
              Padding(
                padding:  const EdgeInsets.only(top: 20),
                child: Image.asset(image),
              ),
              const SizedBox( height: 10,),
              Text(title,
                style:  const TextStyle(
                    color: Color(0xFF101010),
                    fontSize: 15,
                    fontWeight: FontWeight.w400
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(narx,
                    style:  const TextStyle(
                        fontSize: 18,
                        color: Color(0xFFC9AA05),
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  IconButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return const NextMenu();
                    }));
                  },
                      icon:  const Icon(Icons.add_circle,
                        color: Color(0xFF0E803C),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

