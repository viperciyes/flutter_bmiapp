import 'package:flutter/material.dart';

const kBoxDec = BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      const Color(0xffEF868C),
      const Color(0xffEA6262),
    ],
    stops: [0.0, 0.4],
  ),
);

const kTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 15.0,
  fontWeight: FontWeight.bold,
  letterSpacing: 1.2,
);

const kButCIn = Color(0xffF6CFD5);
const kButACol = Color(0xffEF868C);
