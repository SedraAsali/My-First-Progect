import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_avatar/flutter_advanced_avatar.dart';
//import 'package:get/get.dart';
//import 'package:image_picker/image_picker.dart';


class status extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          ListTile(
            onTap: (){
            },
            title: Text('My Status',
              style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle: Text('Tap to add'),
            leading: Icon(Icons.person_pin,size: 50,),),
          Container(
            padding: EdgeInsets.all(8),
            height: 40.0,
            width: double.infinity,
            color: Colors.grey[200],
            child: Text('Recent Updates',style: TextStyle(fontSize: 15.0,
            ),),
          ),
          Expanded(
            child: Container(
                child:
                ListView.builder(itemCount: listStatuse.length, itemBuilder:(context,i)
                {
                  return ListTile(
                    onTap: (){
                      
                      //   Get.to(inpytStory(url:listStatuse[i].imag , UserName: listStatuse[i].name));
                    },
                    title: Text(listStatuse[i].name,
                      maxLines: 1, overflow: TextOverflow.ellipsis,),
                    subtitle: Text(listStatuse[i].time),
                    leading:
                    Container(
                      decoration: BoxDecoration(shape: BoxShape.circle,border: Border.all(color: Colors.blue,width: 3), ),
                      child:

                      AdvancedAvatar(
                        size: 50.0,
                        image: NetworkImage(listStatuse[i].imag),
                      ),

                    ),

                  );
                },
                )
            ),
          ),
        ]
    );

  }
}

class statuse{
  String name;
  String time;
  String imag;
  statuse({
    required this.name,
    required this.time,
    required this.imag,
  });}
List<statuse> listStatuse=[
  statuse(name: 'Sedra Asali',

      time: '11:11',
      imag: 'https://images6.fanpop.com/image/photos/33200000/Spongebob-spongebob-squarepants-33210746-2700-3600.jpg'),
  statuse(name: 'Mom',

      time: '12:00',
      imag: 'https://www.wallpaperflare.com/static/335/587/630/blooming-lotus-flower-selective-focus-photography-wallpaper.jpg'),
  statuse(name: 'Sisssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss',
      time: '1:00',
      imag: 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3a/Cat03.jpg/1200px-Cat03.jpg'),
  statuse(name: 'Sedra Asali',

      time: '11:11',
      imag: 'https://images6.fanpop.com/image/photos/33200000/Spongebob-spongebob-squarepants-33210746-2700-3600.jpg'),
  statuse(name: 'Mom',
      time: '12:00',
      imag: 'https://www.wallpaperflare.com/static/335/587/630/blooming-lotus-flower-selective-focus-photography-wallpaper.jpg'),
  statuse(name: 'Sis',

      time: '1:00',
      imag: 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3a/Cat03.jpg/1200px-Cat03.jpg'),
  statuse(name: 'Sedra Asali',

      time: '11:11',
      imag: 'https://images6.fanpop.com/image/photos/33200000/Spongebob-spongebob-squarepants-33210746-2700-3600.jpg'),
  statuse(name: 'Mom',

      time: '12:00',
      imag: 'https://www.wallpaperflare.com/static/335/587/630/blooming-lotus-flower-selective-focus-photography-wallpaper.jpg'),
  statuse(name: 'Sis',

      time: '1:00',
      imag: 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3a/Cat03.jpg/1200px-Cat03.jpg'),
  statuse(name: 'Sedra Asali',

      time: '11:11',
      imag: 'https://images6.fanpop.com/image/photos/33200000/Spongebob-spongebob-squarepants-33210746-2700-3600.jpg'),
  statuse(name: 'Mom',

      time: '12:00',
      imag: 'https://www.wallpaperflare.com/static/335/587/630/blooming-lotus-flower-selective-focus-photography-wallpaper.jpg'),
  statuse(name: 'Sis',

      time: '1:00',
      imag: 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3a/Cat03.jpg/1200px-Cat03.jpg'),

];
