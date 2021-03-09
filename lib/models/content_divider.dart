import 'package:flutter/material.dart';
import 'package:facebook_clone_app/constants.dart';

class CircleContentDivider extends StatelessWidget {
  const CircleContentDivider({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.circle,
      size: 5.0,
      color: kSecondaryPostTextColor,
    );
  }
}

class SizedBoxWidth5 extends StatelessWidget {
  const SizedBoxWidth5({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 5.0,
    );
  }
}

class SizedBoxThinDividingLineHorizontal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 1.0,
      child: Container(
        height: 1.0,
        color: Colors.grey.shade300,
      ),
    );
  }
}

class SizedBoxThickDividingLineHorizontal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 10.0,
      child: Container(
        height: 10.0,
        color: Colors.grey.shade300,
      ),
    );
  }
}
