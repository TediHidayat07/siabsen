import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//* Color
Color cBlack = const Color(0xff000000);
Color cDarkBlue = const Color(0xff2D4356);
Color cDarkGrey = const Color(0xff333333);
Color cGrey = const Color(0xffCACBC6);
Color cLightGrey = const Color(0xffF1F1F5);
Color cWhite = const Color(0xffFFFFFF);
Color cRed = const Color(0xffDA2F3E);
Color cGreen = const Color(0xff54FF45);
Color cBlue = const Color(0xff2972FF);
Color cYellow = const Color(0xffFFBA00);

//* Space / SizedBox
const Widget horizontalSpaceTiny = SizedBox(width: 5.0);
const Widget horizontalSpaceSmall = SizedBox(width: 10.0);
const Widget horizontalSpaceMedium = SizedBox(width: 25.0);
const Widget horizontalSpaceLarge = SizedBox(width: 50.0);
const Widget horizontalSpaceMassive = SizedBox(width: 120.0);

const Widget verticalSpaceSuperTiny = SizedBox(height: 2.0);
const Widget verticalSpaceTiny = SizedBox(height: 5.0);
const Widget verticalSpaceSmall = SizedBox(height: 10.0);
const Widget verticalSpaceMedium = SizedBox(height: 25.0);
const Widget verticalSpaceLarge = SizedBox(height: 50.0);
const Widget verticalSpaceMassive = SizedBox(height: 120.0);
const Widget verticalSpaceMassiveSignup = SizedBox(height: 20.0);

//* Divider
Widget spacedDivider = Column(
  children: <Widget>[
    verticalSpaceSmall,
    verticalSpaceSmall,
    Divider(color: cBlack, height: 5.0),
    verticalSpaceSmall,
    verticalSpaceSmall,
  ],
);

//* Screen
Widget verticalSpace(double height) => SizedBox(height: height);
double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;
double screenHeight(BuildContext context) => MediaQuery.of(context).size.height;

//* Font Weight
FontWeight thin = FontWeight.w100;
FontWeight extralight = FontWeight.w200;
FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semibold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
FontWeight extrabold = FontWeight.w800;

//* TextStyle
TextStyle headline1 = GoogleFonts.montserrat(fontSize: 32);
TextStyle headline2 = GoogleFonts.montserrat(fontSize: 24);
TextStyle headline3 = GoogleFonts.montserrat(fontSize: 20);
TextStyle subtitle1 = GoogleFonts.montserrat(fontSize: 16);
TextStyle subtitle2 = GoogleFonts.montserrat(fontSize: 14);
TextStyle subtitle3 = GoogleFonts.montserrat(fontSize: 12);
TextStyle button = GoogleFonts.montserrat(fontSize: 14);

//* Border
OutlineInputBorder enableBorder = OutlineInputBorder(
  borderSide: BorderSide(color: cGrey),
  borderRadius: BorderRadius.circular(5),
);

OutlineInputBorder focusedBorder = OutlineInputBorder(
  borderSide: BorderSide(color: cBlack),
  borderRadius: BorderRadius.circular(5),
);

OutlineInputBorder errorBorder = OutlineInputBorder(
  borderSide: BorderSide(color: cRed),
  borderRadius: BorderRadius.circular(5),
);

OutlineInputBorder focusedErrorBorder = OutlineInputBorder(
  borderSide: BorderSide(color: cRed),
  borderRadius: BorderRadius.circular(5),
);

//* Box Decorations

BoxDecoration fieldDecortaion = BoxDecoration(
  borderRadius: BorderRadius.circular(5),
  color: cWhite,
);

BoxDecoration disabledFieldDecortaion = BoxDecoration(
  borderRadius: BorderRadius.circular(5),
  color: cWhite,
);

//* Field Variables

const double fieldHeight = 55;
const double smallFieldHeight = 40;
const double inputFieldBottomMargin = 30;
const double inputFieldSmallBottomMargin = 0;
const EdgeInsets fieldPadding = EdgeInsets.symmetric(horizontal: 15);
const EdgeInsets largeFieldPadding =
    EdgeInsets.symmetric(horizontal: 15, vertical: 15);
