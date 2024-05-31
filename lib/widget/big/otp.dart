import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class OtpCoding extends StatefulWidget {
  const OtpCoding({
    super.key,
  });

  @override
  State<OtpCoding> createState() => _OtpCodingState();
}

class _OtpCodingState extends State<OtpCoding> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 68,
      width: 64,
    decoration: BoxDecoration(
      border: Border.all(
        color: Colors.black,
      ),
      borderRadius: BorderRadius.circular(15)
    ),
    child:TextField(
      onChanged: (value){
        if(value.length==1){
          FocusScope.of(context).nextFocus();
        }
      },
      decoration: InputDecoration(
        border: InputBorder.none
      ),
      style: Theme.of(context).textTheme.headlineMedium,
      keyboardType:TextInputType.number ,
      textAlign: TextAlign.center,
      inputFormatters: [LengthLimitingTextInputFormatter(1),
        FilteringTextInputFormatter.digitsOnly
      ],
    ) ,
    );
  }
}