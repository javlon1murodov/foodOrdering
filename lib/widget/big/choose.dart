import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:ordering/mirror/courier/menu.dart';
import 'package:ordering/widget/big/otp.dart';
class Otp extends StatefulWidget {
  const Otp({super.key});

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        title:
             Padding(
               padding: const EdgeInsets.only(left: 46),
               child: Text("Ro'yxatdan o’tish."),
             ),
      ),
      body: Column(
        children: <Widget>[
               Column(
                 children:<Widget> [
                   Container(
                     child: Align(
                       alignment: Alignment.center,
                       child: Text("Raqamingizni\ntasdiqlang",style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold
                       ),
                       textAlign: TextAlign.center,),
                     ),
                   ),
                 ],
               ),
          SizedBox(height: 10,),
          Text("4 xonali sms kod +998 90 975 70 71\n raqamiga junatildi.",
          style: TextStyle(
            fontSize: 16
          ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 30,),
          Form(child:
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              OtpCoding(),
              OtpCoding(),
              OtpCoding(),
              OtpCoding()
            ],
          ),
          ),
          SizedBox(height: 30,),
          Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return Menu();
                }));
              },
              borderRadius: BorderRadius.circular(10),
              child: Container(
                width: 300,
                height: 48,
                decoration: BoxDecoration(
                  color: Color(0xFF472C9D),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Align(
                  alignment: Alignment.center,
                    child: Text("Davom Etish",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.w600
                    ),
                    )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 6),
            child: Material(
              child: InkWell(
                onTap: (){},
                child: Text("Raqam xatomi ?",
                style: TextStyle(
                  color: Colors.blue
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


