import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
BoxDecoration HomePageBackgroundColor() {
  return const BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Color(0xff334554),
        Color(0xff0b2435),
        Color(0xff091f2c),
      ],
    ),
  );
}
