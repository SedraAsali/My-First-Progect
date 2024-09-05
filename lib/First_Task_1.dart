import 'dart:typed_data';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled2/First_Task_2.dart';
import 'package:untitled2/Fist_Task_3.dart';
class Task extends StatelessWidget {
//String hexColor="#D472F0";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.purpleAccent[100],
      appBar: AppBar(
        backgroundColor: Colors.purple.shade200,
      ),
      body:
      Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.purple.shade200,
              Colors.blueAccent.shade100,
            ],
          ),
        ),
        child:  Padding(
          padding: const EdgeInsets.only(
            top:200.0,
          ),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('PixelPro Digital',
                style: TextStyle(color: Colors.white,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold),),
              SizedBox(
                height: 40.0,
              ),
              Container(
                width: 300.0,
                height: 40.0,
                decoration:
                BoxDecoration(color: Colors.white,
                  borderRadius: BorderRadius.circular((8.0),),),
                child:
                MaterialButton(onPressed: (){
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>Task_2(),
                    ),
                  );
                },

                  child: Text('Login',
                    style: TextStyle(color: Colors.black,
                    ),),),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                width: 300.0,
                height: 40.0,
                decoration:
                BoxDecoration(color: Colors.white,
                  borderRadius: BorderRadius.circular((8.0),),),
                child:
                MaterialButton(onPressed: (){
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>Task_3(),
                    ),
                  );
                },

                  child: Text('Sign Up',
                    style: TextStyle(color: Colors.black,
                    ),),),
              ),

              SizedBox(
                height: 200.0,
              ),

              Text('Continue as a guest',
                style: TextStyle(color: Colors.white,

                ),),
            ],


          ),
        ),




      ),
    );

  }
}
