import 'package:flutter/material.dart';

class BottomToolbar extends StatelessWidget {
  static const double NavigationIconSize = 30.0;
  static const double CustomButtonWidth = 38.0;

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Icon(
            Icons.home,
            size: NavigationIconSize,
            color: Colors.white,
          ),
          Icon(
            Icons.search,
            size: NavigationIconSize,
            color: Colors.white,
          ),
          _getCustomIcon(),
          Icon(
            Icons.message,
            size: NavigationIconSize,
            color: Colors.white,
          ),
          Icon(
            Icons.supervised_user_circle,
            size: NavigationIconSize,
            color: Colors.white,
          )
        ]);
  }

  Widget _getCustomIcon() {
    return Container(
      width: 45,
      height: 27,
      child: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 10.0),
            width: CustomButtonWidth,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7.0), color: Colors.pink),
          ),
          Container(
            margin: EdgeInsets.only(left: 10.0),
            width: CustomButtonWidth,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7.0), color: Colors.blue),
          ),
          Center(
            child: Container(
              height: double.infinity,
              width: CustomButtonWidth,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7.0),
                  color: Colors.white),
              child: Icon(
                Icons.add,
                color: Colors.grey[600],
                size: 20.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
