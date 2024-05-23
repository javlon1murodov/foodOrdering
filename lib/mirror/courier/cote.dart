import 'package:flutter/material.dart';
class Cote extends StatelessWidget {
  final String imag;
  const Cote({
    super.key,
    required this.imag,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 80,
          width: 80,
          decoration: const BoxDecoration(
            color: Color(0xFFEFEEEE),
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: Image.asset(imag),
        ),
        Positioned(
            right: -11,
            bottom: -13,
            child: IconButton(
              onPressed:(){},
              icon: const Icon(Icons.add_circle,
                color: Color(0xFF0E803C),
              ),
            )

        )
      ],
    );
  }
}