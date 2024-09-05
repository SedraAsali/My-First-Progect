import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_avatar/flutter_advanced_avatar.dart';

import 'inputChat.dart';

class chat extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
          backgroundColor:  Colors.teal,
          titleSpacing: 16.0,
          title: Row(
            children: [
            AdvancedAvatar(size: 45,
                child: Image(image: NetworkImage('https://images6.fanpop.com/image/photos/33200000/Spongebob-spongebob-squarepants-33210746-2700-3600.jpg'),)),
              SizedBox(width: 8.0,),
              Expanded(
                child: Column(
                  children: [
                    Text(maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      'Sedra Asali',style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 18.0),),
                    Text(maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      '11:11 pm',style: TextStyle(fontSize: 14.0),),
                  ],
                ),
              ),

            ],
          ),
          actions: [
            IconButton(onPressed: (){},
                icon:
                  Icon(Icons.video_camera_front,color: Colors.black,),),
            IconButton(onPressed: (){},

              icon: Icon(Icons.phone,color: Colors.black,),),
            PopupMenuButton(
                itemBuilder: (context)=> const[
              PopupMenuItem(child: Text('Setting'),value: 'sitting', ),
              PopupMenuItem(child: Text('Started'),value: 'Started', ),
              PopupMenuItem(child: Text('WhatsApp Web'),value: 'WhatsApp Web', ),
              PopupMenuItem(child: Text('New Groubs'),value: 'New Groubs', ),


            ]),

   ], ),
      body: Container(
        color: Colors.grey[400],
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Expanded(
              child: Column(
                children: [
                  chatInput(message: 'hi', isMe: true,),
                  chatInput(message: 'How are you?', isMe: true,),
                  chatInput(message: 'hi', isMe: false,),
                  chatInput(message: 'I am fine', isMe: false,),
                  chatInput(message: 'What about you ..?', isMe: false,),
                 SizedBox(height: 320.0,),
                  Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(25.0),
                    color: Colors.white),
                    child: TextFormField(cursorColor: Colors.teal,

                    decoration: InputDecoration(hintText: 'Write a message',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: BorderSide(color:Colors.teal ),),
                    suffixIcon: IconButton( onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>chat(),));
                    },icon:Icon(Icons.send),color: Colors.teal,)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),

      ),

    );
  }
}