import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_advanced_avatar/flutter_advanced_avatar.dart';
import 'package:untitled2/Chat.dart';
class Chat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount: listChat.length, itemBuilder:(context,i)
    {
      return ListTile(onTap: (){
       Navigator.push(context, MaterialPageRoute(builder: (context)=>chat()));
      },
        title: Text(listChat[i].name,
          maxLines: 1, overflow: TextOverflow.ellipsis,),
        subtitle:Text(listChat[i].msg,
          maxLines: 1, overflow: TextOverflow.ellipsis,),
        trailing: Text(listChat[i].time),
        leading:AdvancedAvatar(
          size: 55.0,
          image: NetworkImage(listChat[i].imag),
        ),);
    }

    );
  }
}
class container{
  String name;
  String msg;
  String time;
  String imag;
  container({
    required this.name,
    required this.msg,
    required this.time,
    required this.imag,
  });}

List<container> listChat=[
  container(name: 'Sedra Asali',
    msg: 'hellooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo',
    time: '11:11',
    imag: 'https://images6.fanpop.com/image/photos/33200000/Spongebob-spongebob-squarepants-33210746-2700-3600.jpg',),
  container(name: 'Mom',
      msg: 'hi',
      time: '12:00',
      imag: 'https://www.wallpaperflare.com/static/335/587/630/blooming-lotus-flower-selective-focus-photography-wallpaper.jpg'),
  container(name: 'Sisssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss',
      msg: 'hello',
      time: '1:00',
      imag: 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3a/Cat03.jpg/1200px-Cat03.jpg'),
  container(name: 'Sedra Asali',
      msg: 'hello',
      time: '11:11',
      imag: 'https://images6.fanpop.com/image/photos/33200000/Spongebob-spongebob-squarepants-33210746-2700-3600.jpg'),
  container(name: 'Mom',
      msg: 'hi',
      time: '12:00',
      imag: 'https://www.wallpaperflare.com/static/335/587/630/blooming-lotus-flower-selective-focus-photography-wallpaper.jpg'),
  container(name: 'Sis',
      msg: 'hello',
      time: '1:00',
      imag: 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3a/Cat03.jpg/1200px-Cat03.jpg'),
  container(name: 'Sedra Asali',
      msg: 'hello',
      time: '11:11',
      imag: 'https://images6.fanpop.com/image/photos/33200000/Spongebob-spongebob-squarepants-33210746-2700-3600.jpg'),
  container(name: 'Mom',
      msg: 'hi',
      time: '12:00',
      imag: 'https://www.wallpaperflare.com/static/335/587/630/blooming-lotus-flower-selective-focus-photography-wallpaper.jpg'),
  container(name: 'Sis',
      msg: 'hello',
      time: '1:00',
      imag: 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3a/Cat03.jpg/1200px-Cat03.jpg'),
  container(name: 'Sedra Asali',
      msg: 'hello',
      time: '11:11',
      imag: 'https://images6.fanpop.com/image/photos/33200000/Spongebob-spongebob-squarepants-33210746-2700-3600.jpg'),
  container(name: 'Mom',
      msg: 'hi',
      time: '12:00',
      imag: 'https://www.wallpaperflare.com/static/335/587/630/blooming-lotus-flower-selective-focus-photography-wallpaper.jpg'),
  container(name: 'Sis',
      msg: 'hello',
      time: '1:00',
      imag: 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3a/Cat03.jpg/1200px-Cat03.jpg'),

];
