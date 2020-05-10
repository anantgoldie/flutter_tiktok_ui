import 'package:flutter/material.dart';
import 'package:flutter_tiktok_ui/widgets/action_toolbar.dart';
import 'package:flutter_tiktok_ui/widgets/bottom_toolbar.dart';
import 'package:flutter_tiktok_ui/widgets/video_description.dart';

class Home extends StatelessWidget {
  Widget get topSection => Container(
        height: 100,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              "Following",
            ),
            Container(
              width: 10.0,
            ),
            Text(
              "For you",
              style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
            )
          ],
        ),
      );

  Widget get middleSection => Expanded(
          child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[VideoDescription(), ActionToolbar()],
      ));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: <Widget>[topSection, middleSection, BottomToolbar()],
      ),
    );
  }
}
