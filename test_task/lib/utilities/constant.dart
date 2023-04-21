/// Constants with saved styles for widgets. All colours, sizes are collected in one file.
import 'package:flutter/material.dart';

const kFirstScreenButtonTextStyle = TextStyle(
  color: Colors.black,
  fontSize: 15,
  fontWeight: FontWeight.w300,
);

const kSecondScreenFieldsTextStyle = TextStyle(
  color: Colors.black,
  fontSize: 20,
  fontWeight: FontWeight.w300,
);

const kSecondScreenAppBarTextStyle = TextStyle(
  color: Colors.black,
  fontSize: 20,
  fontWeight: FontWeight.w400,
);

const kFirstScreenBTNStyle = ButtonStyle(
  backgroundColor: MaterialStatePropertyAll(
    kActiveFieldColour,
  ),
);

const kSecondScreenBackgroundColorAppBar = Color(0xffffecb3);
const kInActiveFieldColour = Color(0xffffe082);
const kActiveFieldColour = Color(0xffffd54f);
