import 'package:facebook_clone_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:facebook_clone_app/models/story_container.dart';

class SectionToStartStory extends StatelessWidget {
  const SectionToStartStory({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      color: Colors.white,
      child: ListView(
        padding: EdgeInsets.symmetric(
          vertical: kPaddingFromEdge,
          horizontal: kPaddingFromEdge - kSmallSpaceBetweenItem,
        ),
        scrollDirection: Axis.horizontal,
        children: [
          StoryContainer(
            circleAvatar: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(
                Icons.add,
                color: Colors.lightBlue,
              ),
            ),
            image: AssetImage('images/story_section/EinsteinProfilePic.jpg'),
            text: 'Add to story',
          ),
          StoryContainer(
            circleAvatar: CircleAvatar(
              backgroundImage:
                  AssetImage('images/story_section/Tesla_profile.jpg'),
            ),
            image: AssetImage('images/story_section/Tesla_background.jpg'),
            text: 'Nikola Tesla',
          ),
          StoryContainer(
            circleAvatar: CircleAvatar(
              backgroundImage:
                  AssetImage('images/story_section/Elon_profile.jpg'),
            ),
            image: AssetImage('images/story_section/Elon_background.jpg'),
            text: 'Elon Musk',
          ),
          StoryContainer(
            circleAvatar: CircleAvatar(
              backgroundImage:
                  AssetImage('images/story_section/Steve_profile.jpg'),
            ),
            image: AssetImage('images/story_section/Steve_background.jpg'),
            text: 'Steve Jobs',
          )
        ],
      ),
    );
  }
}
