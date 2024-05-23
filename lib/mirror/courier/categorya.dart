import 'package:flutter/material.dart';


class Category extends StatelessWidget {
  final String title;
  final String image;
  final String son;
  const Category({
    super.key, 
    required this.title, 
    required this.image,
    required this.son,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, left: 20),
      child: Row(
        children: <Widget>[
          Container(
            width: 100,
            height: 130,
            decoration: BoxDecoration(
              color: Color(0xFFEFEEEE),
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: Image.asset(image),
          ),
          Column(
            children: <Widget>[
              Text(title,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 16
              ),
              ),
              Text(son,style: TextStyle(
                color: Color(0xFFC9AA05),
                fontWeight: FontWeight.w700,
                fontSize: 17
              ),),
              Row(
                children: [
                  IconButton(onPressed: (){},
                    icon: Image.asset("assets/icons/Minus Sign.png"),),
                  Text("1"),
                  IconButton(onPressed: (){},
                    icon: Image.asset("assets/icons/Add.png"),),
                  
                ],
              ),
             
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 120),
            child: IconButton(onPressed: (){},
                icon: Image.asset("assets/icons/Highlight off.png"),),
          ),
        ],
      ),
    );
  }
}
