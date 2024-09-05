import 'package:flutter/material.dart';
import 'package:untitled2/BMI.dart';
import 'package:untitled2/Chat.dart';
import 'package:untitled2/Counter.dart';
import 'package:untitled2/First_Task_1.dart';
import 'package:untitled2/Messengair.dart';
import 'package:untitled2/Screen_Color.dart';
import 'whatsApp.dart';

void main()
{
  runApp(myApp());

}

class myApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: color(),
      debugShowCheckedModeBanner: false,

    );
  }

}