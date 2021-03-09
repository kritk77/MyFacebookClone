import 'package:facebook_clone_app/constants.dart';
import 'package:facebook_clone_app/models/content_divider.dart';
import 'package:facebook_clone_app/models/content_models.dart';
import 'package:flutter/material.dart';

class LikeCommentShareButton extends StatelessWidget {
  final IconData icon;
  final String text;

  LikeCommentShareButton({@required this.icon, @required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: kPaddingFromEdge),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 20.0,
            color: kSecondaryPostTextColor,
          ),
          SizedBoxWidth5(),
          TextSecondaryStyle(text),
        ],
      ),
    );
  }
}
