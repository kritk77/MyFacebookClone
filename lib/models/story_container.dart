import 'package:facebook_clone_app/constants.dart';
import 'package:flutter/material.dart';

class StoryContainer extends StatelessWidget {
  final CircleAvatar circleAvatar;
  final AssetImage image;
  final String text;

  StoryContainer({this.circleAvatar, this.text, this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kSmallSpaceBetweenItem),
      child: Container(
        width: 100.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: Colors.white,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: image,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(alignment: Alignment.topLeft, child: circleAvatar),
              Text(
                text,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
