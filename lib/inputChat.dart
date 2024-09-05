import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class chatInput extends StatelessWidget {
final String message;
final bool isMe;
chatInput({required this.isMe,required this.message});
  @override
  Widget build(BuildContext context) {
    return
      Column(
      children: [
        Align(
          alignment: isMe? Alignment.centerRight:Alignment.centerLeft,
          child:
          Container(
            padding: EdgeInsets.all(10),
            margin:  EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: isMe?Colors.lightGreen[300]:Colors.grey[300],
              borderRadius: BorderRadius.circular(10),
            ),
            child:
           Text(message,style: TextStyle(color: isMe?Colors.white:Colors.black),
            ),

          ),
        ),

        ],
    );
  }
}
