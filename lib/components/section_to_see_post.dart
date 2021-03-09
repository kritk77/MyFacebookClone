import 'package:flutter/material.dart';
import 'package:facebook_clone_app/models/post_container.dart';

class SectionToSeePost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //1 Container for 1 Post
        PostContainer(
          profileName: 'Facecrooks',
          profilePic: 'post_section/Facecrooks_profile.jpg',
          contentName: 'FacecrooksTaxes',
          contentPic: 'post_section/FacecrooksTaxes_contentPic.jpg',
          postTime: '9 h',
          numberOfLikes: '2.4k',
          numberOfComments: '74',
          numberOfShares: '118',
          numberOfViews: '111k',
        ),
        PostContainer(
          profileName: '9GAG',
          profilePic: 'post_section/9gag_profile.png',
          contentName: '9gagThesis',
          contentPic: 'post_section/9gagThesis_contentPic.jpg',
          postTime: '23 h',
          numberOfLikes: '1.4k',
          numberOfComments: '132',
          numberOfShares: '268',
          numberOfViews: '48k',
        ),
      ],
    );
  }
}
