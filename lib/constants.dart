import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math';

final TextStyle kTitleTextStyleRoboto = GoogleFonts.roboto(
  color: Color(0xFF1493FC),
  fontSize: 30.0,
  fontWeight: FontWeight.w700,
);

const kAppBarActionBackgroundColor = Color(0xFFDBDEE0);

final kInactiveAppBarBottomColor = Colors.grey.shade700;

final kActiveAppBarBottomColor = Colors.blue;

const kSecondaryPostTextColor = Color(0xFF606770);

const kSecondaryPostTextSize = 13.0;

const kSecondaryPostTextStyle = TextStyle(
  color: kSecondaryPostTextColor,
  fontSize: kSecondaryPostTextSize,
);

//ToolBarHeight of the Actions in the AppBar
const double kToolbarHeight2 = 100.0;

const double kPaddingFromEdge = 15.0;

const double kSmallSpaceBetweenItem = kPaddingFromEdge / 6;

const double kSpaceBetweenItem = kPaddingFromEdge / 2;
