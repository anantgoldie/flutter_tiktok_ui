import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ActionToolbar extends StatelessWidget {
  static const double ActionWidgetSize = 60.0;

  static const double ProfileImageSize = 50.0;

  static const double ActionIconSize = 30.0;

  static const double PlusIconSize = 20.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          _getFollowAction(),
          _getSocialIcon(icon: Icons.camera, title: "3.2m"),
          _getSocialIcon(icon: Icons.chat_bubble, title: "16.4k"),
          _getSocialIcon(icon: Icons.share, title: "Share"),
          _musicPlayAction()
        ],
      ),
    );
  }

  Widget _getSocialIcon({String title, IconData icon}) {
    return Container(
      width: ActionWidgetSize,
      height: ActionWidgetSize,
      margin: EdgeInsets.only(top: 5.0),
      child: Column(
        children: <Widget>[
          Icon(
            icon,
            size: ActionIconSize,
            color: Colors.grey[300],
          ),
          Padding(
            padding: EdgeInsets.only(top: 2.0),
            child: Text(
              title,
              style: TextStyle(fontSize: 12.0),
            ),
          )
        ],
      ),
    );
  }

  Widget _getFollowAction() {
    return Container(
      width: ActionWidgetSize,
      height: ActionWidgetSize,
      margin: EdgeInsets.only(bottom: 10.0),
      child: Stack(
        children: <Widget>[_getProfilePicture(), _getPlusIcon()],
      ),
    );
  }

  Widget _getProfilePicture() {
    return Positioned(
        left: (ActionWidgetSize / 2) - (ProfileImageSize / 2),
        child: Container(
          height: ProfileImageSize,
          width: ProfileImageSize,
          padding: EdgeInsets.all(2.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(ProfileImageSize / 2),
          ),
          child: CachedNetworkImage(
            imageUrl:
                "https://img.icons8.com/office/80/000000/login-as-user.png",
            placeholder: (context, url) => CircularProgressIndicator(),
            errorWidget: (context, url, error) => Icon(Icons.error),
          ),
        ));
  }

  Widget _getPlusIcon() {
    return Positioned(
        bottom: 0,
        left: (ActionWidgetSize / 2) - (PlusIconSize / 2),
        child: Container(
          height: PlusIconSize,
          width: PlusIconSize,
          decoration: BoxDecoration(
            color: Colors.red[700],
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Icon(
            Icons.add,
            color: Colors.white,
            size: PlusIconSize,
          ),
        ));
  }

  LinearGradient get musicGradient => LinearGradient(colors: [
        Colors.grey[800],
        Colors.grey[900],
        Colors.grey[900],
        Colors.grey[800],
      ], stops: [
        0.0,
        0.4,
        0.6,
        1.0
      ], begin: Alignment.bottomLeft, end: Alignment.topRight);

  Widget _musicPlayAction() {
    return Container(
      height: ActionWidgetSize,
      width: ActionWidgetSize,
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(11.0),
            height: ProfileImageSize,
            width: ProfileImageSize,
            decoration: BoxDecoration(
                gradient: musicGradient,
                borderRadius: BorderRadius.circular(ProfileImageSize / 2)),
            child: CachedNetworkImage(
              imageUrl:
                  "https://img.icons8.com/office/80/000000/login-as-user.png",
              placeholder: (context, url) => CircularProgressIndicator(),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
          )
        ],
      ),
    );
  }
}
