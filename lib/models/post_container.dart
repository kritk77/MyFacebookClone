import 'file:///C:/Users/kkittisriswa/AndroidStudioProjects/facebook_clone_app/lib/buttons/like_comment_share_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:facebook_clone_app/constants.dart';
import 'file:///C:/Users/kkittisriswa/AndroidStudioProjects/facebook_clone_app/lib/contents/post_captions.dart';
import 'package:facebook_clone_app/models/content_divider.dart';
import 'package:facebook_clone_app/models/content_models.dart';

class PostContainer extends StatelessWidget {
  final String profileName;
  final String profilePic;
  final String contentName;
  final String contentPic;
  final String postTime;
  final String numberOfLikes;
  final String numberOfComments;
  final String numberOfShares;
  final String numberOfViews;

  PostContainer({
    @required this.profileName,
    this.profilePic,
    this.contentName,
    this.contentPic,
    this.postTime,
    this.numberOfLikes,
    this.numberOfComments,
    this.numberOfShares,
    this.numberOfViews,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      //divide userInfo, caption, and picture
      child: Column(
        children: [
          //for userInfo
          Padding(
            padding: EdgeInsets.all(kPaddingFromEdge),
            child: Row(
              children: [
                //for profilePicture
                CircleAvatar(
                  backgroundImage: AssetImage('images/$profilePic'),
                ),
                //for accountName
                Padding(
                  padding: EdgeInsets.only(left: kSpaceBetweenItem),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //accountName
                      Text(
                        profileName,
                      ),
                      //postTime and postPublicity
                      Row(
                        children: [
                          //for postTime
                          TextSecondaryStyle(postTime),
                          SizedBoxWidth5(),
                          //for the small dot between postTime and postPublicity
                          CircleContentDivider(),
                          SizedBoxWidth5(),
                          //for postPublicity
                          Icon(
                            Icons.assistant_navigation,
                            size: 15.0,
                            color: kSecondaryPostTextColor,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          //for caption
          Container(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: kPaddingFromEdge,
                right: kPaddingFromEdge,
                bottom: kPaddingFromEdge,
              ),
              child: Text(postCaptions[contentName]),
            ),
          ),
          //for picture
          Container(
            child: Image.asset('images/$contentPic'),
          ),
          //for number of likes, comments, shares, Views
          Padding(
            padding: EdgeInsets.all(kPaddingFromEdge),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //for likeIcon and likeNumbers
                Container(
                  child: Row(
                    children: [
                      //likeIcon
                      CircleAvatar(
                        backgroundColor: Colors.blueAccent,
                        radius: 8.0,
                        child: Icon(
                          Icons.thumb_up,
                          color: Colors.white,
                          size: 10.0,
                        ),
                      ),
                      SizedBoxWidth5(),
                      TextSecondaryStyle(numberOfLikes),
                    ],
                  ),
                ),
                //for comments, shares, Views numbers
                Container(
                  child: Row(
                    children: [
                      //number of comments
                      TextSecondaryStyle(numberOfComments),
                      SizedBoxWidth5(),
                      TextSecondaryStyle('comments'),
                      SizedBoxWidth5(),
                      CircleContentDivider(),
                      SizedBoxWidth5(),
                      //number of shares
                      TextSecondaryStyle(numberOfShares),
                      SizedBoxWidth5(),
                      TextSecondaryStyle('shares'),
                      SizedBoxWidth5(),
                      CircleContentDivider(),
                      SizedBoxWidth5(),
                      //number of Views
                      TextSecondaryStyle(numberOfViews),
                      SizedBoxWidth5(),
                      TextSecondaryStyle('Views'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBoxThinDividingLineHorizontal(),
          //for Like, Comment, Share button
          Padding(
            padding: EdgeInsets.all(kPaddingFromEdge),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                LikeCommentShareButton(
                  icon: Icons.thumb_up_alt_outlined,
                  text: 'Like',
                ),
                LikeCommentShareButton(
                  icon: Icons.mode_comment_outlined,
                  text: 'Comment',
                ),
                LikeCommentShareButton(
                  icon: Icons.share,
                  text: 'Share',
                ),
              ],
            ),
          ),
          SizedBoxThinDividingLineHorizontal(),
          //TODO: if there are comments section in the future, it's here
          SizedBoxThickDividingLineHorizontal(),
        ],
      ),
    );
  }
}
