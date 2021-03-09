import 'package:facebook_clone_app/constants.dart';
import 'package:flutter/material.dart';

class LivePhotoRoomButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color;

  LivePhotoRoomButton({@required this.icon, @required this.text, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Row(
        children: [
          Icon(
            icon,
            size: 20.0,
            color: color,
          ),
          Padding(
            padding: EdgeInsets.only(left: kSmallSpaceBetweenItem),
            child: Text(text),
          ),
        ],
      ),
    );
  }
}
