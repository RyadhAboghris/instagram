import 'package:flutter/material.dart';

import '../utillites/utilities.dart';

Widget customInputWidget(
    double width, String hintText, IconData icon, bool isSecure) {
  return Padding(
    padding: const EdgeInsets.all(2.0),
    child: SizedBox(
      width: width * 0.3,
      height: 50,
      child: TextField(
        obscureText: isSecure,
        cursorColor: mainColor,
        autofocus: false,
        decoration: InputDecoration(
          hoverColor: mainColor,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: mainBgColor),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: mainBgColor),
          ),
          filled: true,
          prefixIcon: Icon(
            icon,
            color: mainGreyColor,
            size: 20,
          ),
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          fillColor: mainBgColor,
          hintText: hintText,
          hintStyle: TextStyle(color: mainGreyColor),
        ),
      ),
    ),
  );
}
