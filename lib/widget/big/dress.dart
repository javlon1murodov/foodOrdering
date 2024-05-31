import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:ordering/widget/big/choose.dart';
class Dressed extends StatelessWidget {
  const Dressed({super.key});

  @override
  Widget build(BuildContext context) {
    final maskFormatter =  MaskTextInputFormatter(
      mask: '+998 (##) ###-##-##',);
    return Scaffold(
        backgroundColor: Colors.deepPurple,
        body:SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 211),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                    width: 292,
                    height: 56,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        )
                    ),
                    child:const TextField(
                      style: TextStyle(
                          fontWeight: FontWeight.bold
                      ),
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Ismingiz"
                      ),
                    ) ,
                  ),
                ),
              ),
              const SizedBox(height: 15,),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                width:292 ,
                height: 56,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                        Radius.circular(20)
                    )

                ),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    hintText: "Telefon raqam ",
                    border: InputBorder.none,
                  ),
                  inputFormatters: [
                    maskFormatter
                  ],
                ),
              ),
              const SizedBox( height: 70,),
              const Text("Bizga shu yerdan \nqo’shilishingiz mumkin!\n Buyurtma berish yoki \no’z maxsulotlaringizni \nsotish.",
                textAlign:TextAlign.center ,
                style: TextStyle(
                    color: Colors.white, fontSize:20,
                    fontWeight: FontWeight.w500
                ),

              ),
              const SizedBox(height: 90,),
              Container(
                width: 227,
                height: 68,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(25),
                  ),
                ),
                child: IconButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return const Otp();
                    }
                    ));
                  },
                  icon: Image.asset("assets/icons/arr.png"),
                ),
              ),
            ],
          ),
        )
    );
  }
}