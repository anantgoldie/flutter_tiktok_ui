import 'package:flutter/material.dart';

class VideoDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
          height: 70.0,
          padding: EdgeInsets.only(left: 20.0),
          child: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
          Text('@anantchoubey', style: TextStyle(fontWeight: FontWeight.bold),),
          Text('Video Title and some other stuff',),
          Row(
            children: <Widget>[
              Icon(Icons.music_note, size: 15.0, color: Colors.white,),
              Text('Artist name - Album name - song', style: TextStyle(fontSize: 12.0),)
            ],
          )
      ],
    ),
        ));
  }
}
