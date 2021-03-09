import 'package:flutter/material.dart';
import 'package:facebook_clone_app/constants.dart';

class AppBarAction extends StatelessWidget {
  final IconData actionIcon;

  AppBarAction({@required this.actionIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(
        actionIcon,
        color: Colors.black,
      ),
      padding: EdgeInsets.all(5.0),
      margin: EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: kAppBarActionBackgroundColor,
      ),
    );
  }
}
