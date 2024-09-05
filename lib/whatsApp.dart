import 'package:flutter/material.dart';
import 'package:untitled2/screenChat.dart';

import 'Status.dart';
//import 'package:untitled/ScreenChat.dart';
//import 'package:untitled/Story.dart';

class WhtisApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return
      DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title:
          Text('WhatsApp',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          bottom: TabBar(tabs: [
            Tab(child:
            Icon(Icons.camera_enhance_outlined),),
            Tab(child:
            Text('Chats'),),
            Tab(child:
            Text('Status'),),
            Tab(child:
            Text('Calls'),),
          ],
          ),
          actions: [
            Row(children: [

              IconButton(onPressed: (){},
                icon: Icon(Icons.search),
              ),
//مشان علامة تلت نقط فوق  بعض تبع الاختياريات
              PopupMenuButton(itemBuilder: (context)=> const[
                PopupMenuItem(child: Text('Setting'),value: 'sitting', ),
                PopupMenuItem(child: Text('Started'),value: 'Started', ),
                PopupMenuItem(child: Text('WhatsApp Web'),value: 'WhatsApp Web', ),
                PopupMenuItem(child: Text('New Groubs'),value: 'New Groubs', ),


              ]),
            ],),

          ],
        ),
        body:
        //الفاىدة هنا لحتى ندمج bottemBar مع ال body
        TabBarView(
          children: [
            Text('0'),//هي مشان اول تاب (تبع الكاميرا)
            Chat(),//هي مشان تاني تاب (تبع الChats )
            status(),//هي مشان تالت تاب (تبع Status)
            Text('3'),//هي مشان رابع تاب (تبع Calls)

          ], ),
      ),
    );
  }


}
