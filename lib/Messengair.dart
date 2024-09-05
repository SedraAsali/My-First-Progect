//import 'dart:ffi';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Messag extends StatelessWidget {
  const Messag({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      appBar: AppBar(
          backgroundColor:  Colors.black,
          titleSpacing: 16.0,
          actions: [
            IconButton(onPressed: (){},
                icon: CircleAvatar
                  (

                  radius: 13.0,
                  child:
                  Icon(Icons.camera_alt,
                      color:Colors.black),

                )),
            IconButton(onPressed: (){},
                icon: CircleAvatar
                  (
                  radius: 13.0,
                  child:
                  Icon(Icons.edit,
                      color:Colors.black),
                )),
          ],
          title:Row(
            children: [
              Stack(

                children: [CircleAvatar(
                  backgroundImage: NetworkImage('https://th.bing.com/th/id/OIP.9vGbS4XhTjK35L4j2TWSYQHaHS?rs=1&pid=ImgDetMain',),
                  radius: 20.0,

                ),
                  CircleAvatar(
                    radius: 7.0,backgroundColor:
                  Colors.red,
                  ),
                ],
              ),
              SizedBox(
                width:10.0,
              ),
              Text('Sedra Asali',
                style: TextStyle(color: Colors.white),
              ),
            ],
          )
      ),

      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color:Colors.grey,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      children: [
                        Icon(Icons.search,
                          color: Colors.white,),
                        SizedBox(
                          width: 15.0,
                        ),
                        Text('Search',
                          style: TextStyle(
                            color:Colors.white,
                          ),),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height:16.0,
                ),
                Container(
                  height: 90.0,
                  child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index )=>buildStoryItem(),
                    separatorBuilder: (context,index )=>SizedBox(
                      width: 8.0,
                    ),
                    itemCount: 10,
                  ),
                ),
                SizedBox(
                  height:16.0,
                ),
                ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder:  (context,index) => buildChatItem(),
                  separatorBuilder: (context,index) => SizedBox(
                    height:20.0,
                  ),
                  itemCount: 10,),

              ],  ),
          ),
        ),
      ),
    );
  }
}

Widget buildChatItem()=> Row(
  children: [

    Stack(
      alignment: AlignmentDirectional.bottomEnd,
      children: [
        CircleAvatar(

          backgroundImage: NetworkImage('https://th.bing.com/th/id/OIP.9vGbS4XhTjK35L4j2TWSYQHaHS?rs=1&pid=ImgDetMain',),
          radius: 25.0,),
        CircleAvatar(
          radius: 7.0,
          backgroundColor: Colors.red,
        ),
      ],   ),

    SizedBox(
      width:7.0,
    ),
    Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(' Siba Aali',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Text('hello my siste , how are you.?',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.white,),
                ),
              ),
              SizedBox(
                width:5.0,
              ),
              Text('00:00 am',
                style: TextStyle(
                  color: Colors.white,),
              ),
            ],                   ),


        ],
      ),
    ),
  ],



);
Widget buildStoryItem() =>  Container(
  width:50.0 ,
  child: Column(
    children: [
      Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          CircleAvatar(

            backgroundImage: NetworkImage('https://th.bing.com/th/id/OIP.9vGbS4XhTjK35L4j2TWSYQHaHS?rs=1&pid=ImgDetMain',),
            radius: 25.0,

          ),
          Padding(

            padding: const EdgeInsets.only(
              right: 3.0,
              bottom: 3.0,
            ),
            child: CircleAvatar(
              radius: 7.0,backgroundColor:
            Colors.red,

            ),
          ),
        ],
      ),
      Text('Siba Asalii',
        maxLines:2 ,
        overflow:TextOverflow.ellipsis,
        style: TextStyle(
          color:Colors.white,

        ),
      ),
    ],

  ),
);