import 'package:flutter/material.dart';
import 'package:facebook_clone_app/constants.dart';

class TextSecondaryStyle extends StatelessWidget {
  final String text;
  TextSecondaryStyle(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: kSecondaryPostTextStyle,
    );
  }
}
