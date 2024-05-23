import 'package:flutter/material.dart';
class Accoun extends StatefulWidget {
  const Accoun({super.key});

  @override
  State<Accoun> createState() => _AccounState();
}

class _AccounState extends State<Accoun> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("data could not be loaded",
          style: TextStyle(),),
      ),
    );
  }
}
