import 'package:flutter/material.dart';

class color extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [


              Colors.lightGreenAccent,
              Colors.red,
              Colors.purpleAccent,
              Colors.blue,



            ],
          )
        ),
      ),
    );
  }
}
