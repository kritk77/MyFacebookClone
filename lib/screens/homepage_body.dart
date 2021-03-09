import 'package:facebook_clone_app/components/section_to_start_post.dart';
import 'package:facebook_clone_app/components/section_to_start_story.dart';
import 'package:facebook_clone_app/components/section_to_see_post.dart';
import 'package:facebook_clone_app/models/content_divider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade300,
      child: SingleChildScrollView(
        child: Column(
          children: [
            //First block here for posting new post, Live, Photo, Room
            SectionToStartPost(),
            //SizedBox to separate 1st and 2nd block
            SizedBoxThickDividingLineHorizontal(),
            //Second block here for stories
            SectionToStartStory(),
            //SizedBox to separate 2nd and posts block
            SizedBoxThickDividingLineHorizontal(),
            SectionToSeePost(),
          ],
        ),
      ),
    );
  }
}
