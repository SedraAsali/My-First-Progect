import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:story_viewer/story_viewer.dart';

class inpytStory extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return StoryViewer(
      backgroundColor: Colors.blue,
      ratio: StoryRatio.r16_9,
      stories: [
        StoryItemModel(
          imageProvider:(NetworkImage('https://www.wallpaperflare.com/static/335/587/630/blooming-lotus-flower-selective-focus-photography-wallpaper.jpg')),
        ),
      ],
      userModel: UserModel(username: 'SedraAsali',
          profilePicture: NetworkImage('https://www.wallpaperflare.com/static/335/587/630/blooming-lotus-flower-selective-focus-photography-wallpaper.jpg')),
    );
  }
}
