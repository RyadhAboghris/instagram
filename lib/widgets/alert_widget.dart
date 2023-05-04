import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram/widgets/custom_input_widget.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../utillites/utilities.dart';

class AlertWidgets {
  static forgetPasswordInputWidget(context, double width, double height) {
    Alert(
      context: context,
      title: '',
      content: Container(
        height: height * 0.1,
        width: width * 0.1,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            customInputWidget(width, 'Enter Your Mail to RePassword',
                FontAwesomeIcons.envelope, true),
          ],
        ),
      ),
      buttons: [
        DialogButton(
          color: mainBlackColor,
          child: Text(
            "Cancel",
            style: TextStyle(color: mainWhiteColor, fontSize: 18),
          ),
          onPressed: () => Navigator.pop(context),
        ),
        DialogButton(
          color: mainColor,
          child: Text(
            "Send",
            style: TextStyle(color: mainWhiteColor, fontSize: 18),
          ),
          onPressed: () => Navigator.pop(context),
        )
      ],
    ).show();
  }

  static updatePasswordInputWidget(context, double width, double height) {
    Alert(
      context: context,
      title: '',
      content: Container(
        height: height * 0.2,
        width: width * 0.2,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            customInputWidget(
                width, 'Enter Your New Password', FontAwesomeIcons.lock, true),
            customInputWidget(
                width, 'Confirm Your Password', FontAwesomeIcons.lock, true),
          ],
        ),
      ),
      buttons: [
        DialogButton(
          color: mainBlackColor,
          child: Text(
            "Cancel",
            style: TextStyle(color: mainWhiteColor, fontSize: 18),
          ),
          onPressed: () => Navigator.pop(context),
        ),
        DialogButton(
          color: mainColor,
          child: Text(
            "Update",
            style: TextStyle(color: mainWhiteColor, fontSize: 18),
          ),
          onPressed: () => Navigator.pop(context),
        )
      ],
    ).show();
  }
}
