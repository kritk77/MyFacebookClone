import 'package:facebook_clone_app/constants.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'file:///C:/Users/kkittisriswa/AndroidStudioProjects/facebook_clone_app/lib/buttons/live_photo_room_button.dart';
import 'package:facebook_clone_app/models/content_divider.dart';

class SectionToStartPost extends StatelessWidget {
  const SectionToStartPost({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          //Row for CircleAvatar of user + create post TextField
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: kSpaceBetweenItem, horizontal: kPaddingFromEdge),
            child: Row(
              children: [
                //CircleAvatar for user pic
                CircleAvatar(
                  backgroundImage:
                      AssetImage('images/story_section/EinsteinProfilePic.jpg'),
                ),
                //TextField for input new post
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: kSpaceBetweenItem),
                    child: Container(
                      height: 35.0,
                      child: TextField(
                        textAlignVertical: TextAlignVertical.bottom,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(25.0)),
                          ),
                          hintText: ' What\'s on your mind?',
                          hintStyle: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          //dividing line between top and bottom
          SizedBoxThinDividingLineHorizontal(),
          //Row for 3 FlatButton for Live, Photo, Room
          Container(
            height: 40.0,
            margin: EdgeInsets.all(5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                LivePhotoRoomButton(
                  icon: Icons.switch_video_outlined,
                  text: 'Live',
                  color: Colors.red.shade600,
                ),
                Center(
                  child: SizedBox(
                    width: 1.0,
                    child: Container(
                      color: Colors.grey.shade300,
                    ),
                  ),
                ),
                LivePhotoRoomButton(
                  icon: Icons.image_outlined,
                  text: 'Photo',
                  color: Colors.lightGreen,
                ),
                Center(
                  child: SizedBox(
                    width: 1.0,
                    child: Container(
                      color: Colors.grey.shade300,
                    ),
                  ),
                ),
                LivePhotoRoomButton(
                  icon: Icons.video_call,
                  text: 'Room',
                  color: Colors.deepPurpleAccent,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
