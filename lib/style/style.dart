library style;

import 'package:flutter/material.dart';

const TextStyle h0 = TextStyle(
    fontSize: 32,
    fontFamily: 'SVN-ProductSans',
    fontWeight: FontWeight.w700,
    color: Color(0xFF131935));
const TextStyle h0medium = TextStyle(
    fontSize: 32,
    fontFamily: 'SVN-ProductSans',
    fontWeight: FontWeight.w400,
    color: Color(0xFF131935));
const TextStyle h1medium = TextStyle(
    fontSize: 22,
    fontFamily: 'SVN-ProductSans',
    fontWeight: FontWeight.w400,
    color: Color(0xFF131935));
const TextStyle h1 = TextStyle(
    fontSize: 22,
    fontFamily: 'SVN-ProductSans',
    fontWeight: FontWeight.w700,
    color: Color(0xFF131935));
const TextStyle h2 = TextStyle(
    fontSize: 20,
    fontFamily: 'SVN-ProductSans',
    fontWeight: FontWeight.w700,
    color: Color(0xFF131935));
const TextStyle h2medium = TextStyle(
    fontSize: 20,
    fontFamily: 'SVN-ProductSans',
    fontWeight: FontWeight.w400,
    color: Color(0xFF131935));
const TextStyle h3 = TextStyle(
    fontSize: 18,
    fontFamily: 'SVN-ProductSans',
    fontWeight: FontWeight.w700,
    color: Color(0xFF131935));
const TextStyle h3medium = TextStyle(
    fontSize: 18,
    fontFamily: 'SVN-ProductSans',
    fontWeight: FontWeight.w400,
    color: Color(0xFF131935));

const TextStyle h4 = TextStyle(
    fontSize: 16,
    fontFamily: 'SVN-ProductSans',
    fontWeight: FontWeight.w700,
    color: Color(0xFF131935));
const TextStyle h4medium = TextStyle(
    fontSize: 16,
    fontFamily: 'SVN-ProductSans',
    fontWeight: FontWeight.w400,
    color: Color(0xFF131935));
const TextStyle h5 = TextStyle(
    fontSize: 14,
    fontFamily: 'SVN-ProductSans',
    fontWeight: FontWeight.w700,
    color: Color(0xFF131935));
const TextStyle h5medium = TextStyle(
    fontSize: 14,
    fontFamily: 'SVN-ProductSans',
    fontWeight: FontWeight.w400,
    color: Color(0xFF131935));
const TextStyle bodyBig = TextStyle(
    fontSize: 18,
    fontFamily: 'SVN-ProductSans',
    fontWeight: FontWeight.w400,
    color: Color(0xFF131935));
const TextStyle bodyNormal = TextStyle(
    fontSize: 14,
    fontFamily: 'SVN-ProductSans',
    fontWeight: FontWeight.w400,
    color: Color(0xFF131935));

const TextStyle bodyMedium = TextStyle(
    fontSize: 16,
    fontFamily: 'SVN-ProductSans',
    fontWeight: FontWeight.w400,
    color: Color(0xFF131935));
const TextStyle h4bold = TextStyle(
    fontSize: 16,
    fontFamily: 'SVN-ProductSans',
    fontWeight: FontWeight.w700,
    color: Color(0xFF131935));
const TextStyle splashDescription = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.w400,
  color: Color(0xFF545B7B),
  fontFamily: 'SVN-ProductSans',
);
const TextStyle btnTextStyle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w700,
    fontFamily: 'SVN-ProductSans',
    color: white);
TextStyle numPadStyle = const TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.w400,
    fontFamily: 'SVN-ProductSans',
    color: Color(0xFF131935));
TextStyle phoneStyle = const TextStyle(
    fontSize: 36,
    fontWeight: FontWeight.w400,
    fontFamily: 'SVN-ProductSans',
    color: Color(0xFF131935));
TextStyle numpadDes = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    fontFamily: 'SVN-ProductSans',
    color: const Color(0xFF131935).withOpacity(0.52));
TextStyle hintStyle = const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w400,
    fontFamily: 'SVN-ProductSans',
    color: Color(0xFFBBBECE));

TextStyle incomingPhoneStyle = const TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.w700,
    fontFamily: 'SVN-ProductSans',
    color: white);
TextStyle incomingDesStyle = const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w400,
    fontFamily: 'SVN-ProductSans',
    color: white);
TextStyle splashLogoStyle = const TextStyle(
    fontSize: 74,
    fontWeight: FontWeight.w700,
    fontFamily: 'SVN-ProductSans',
    color: white);

//-------------------------------------------------------------------------------------------------------------------------
//-------------------------------------------------------------------------------------------------------------------------
//-------------------------------------------------------------------------------------------------------------------------
OutlineInputBorder inputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(40.0),
    borderSide: const BorderSide(color: placeholderColor, width: 1.0));
LinearGradient brandGradient = const LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    // stops: [0.1, 0.9],
    colors: [Color(0xFF0B53F5), Color(0xFF6695FF)]);
LinearGradient splashGradient = const LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFF598BFC),
      Color(0xFF274FDD),
    ]);
LinearGradient horizontalGradient = const LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    // stops: [0.1, 0.9],
    colors: [
      Color(0xFF598BFC),
      Color(0xFF295ED7),
    ]);
ButtonStyle brandStyle = ButtonStyle(
  backgroundColor: MaterialStateProperty.all<Color>(blueBrand),
);
ButtonStyle elevatedStyle = ButtonStyle(
    padding: MaterialStateProperty.all(
        const EdgeInsets.symmetric(horizontal: 24, vertical: 12)),
    backgroundColor: MaterialStateProperty.all(const Color(0xFFE0EAFF)),
    overlayColor: MaterialStateProperty.all(const Color(0xFFAFEAFF)),
    shadowColor: MaterialStateProperty.all(transparent),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(5.0),
    )));
BoxDecoration brandButton = BoxDecoration(
    gradient: brandGradient,
    borderRadius: BorderRadius.circular(40),
    boxShadow: <BoxShadow>[
      BoxShadow(
          color: const Color(0xFF4880FF).withOpacity(0.32), //shadow for button
          offset: const Offset(0, 10),
          spreadRadius: 3,
          blurRadius: 40) //blur radius of shadow
    ]);
ButtonStyle filterRemoveButton = ButtonStyle(
    minimumSize: MaterialStateProperty.all(const Size(140, 50)),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5), bottomLeft: Radius.circular(5)),
            side: BorderSide(color: blueBrand))));

ButtonStyle filterButton = ButtonStyle(
    backgroundColor: const MaterialStatePropertyAll(blueBrand),
    shadowColor: MaterialStateProperty.all(Colors.transparent),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(5), bottomRight: Radius.circular(5)),
            side: BorderSide(color: Colors.transparent))),
    minimumSize: MaterialStateProperty.all(const Size(140, 50)));
//-------------------------------------------------------------------------------------------------------------------------
//-------------------------------------------------------------------------------------------------------------------------
//-------------------------------------------------------------------------------------------------------------------------
Color green = const Color(0xFF5BB74C);
Color black = const Color(0xFF131935);
Color black7 = const Color(0xFFF5F6F8);
Color black3 = const Color(0xFF85899D);
Color black1 = const Color(0xFF131935);
Color black2 = const Color(0xFF545B7B);
Color black5 = const Color(0xFFD9DBE7);
Color black6 = const Color(0xFFE7E9F1);
Color black8 = const Color(0xFFF8F8FA);
Color blue2 = const Color(0xFFF0F5FF);
Color transparent = Colors.transparent;
Color red = const Color(0xFFE75151);
Color callingActionColor = const Color(0xFF012FA4);
const Color placeholderColor = Color(0xFFBBBECE);
const Color blueBrand = Color(0xFF4880FF);
const Color white = Color(0xFFFFFFFF);

const Color grayText = Color(0xFF656E82);
const Color lightBlue = Color(0xFFF5F6FA);
