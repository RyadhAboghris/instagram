// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../utillites/utilities.dart';

class HeaderMenuWhitoutLoginWidget extends StatelessWidget {
  double width, height;
  HeaderMenuWhitoutLoginWidget(
    this.width,
    this.height,
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Center(
              child: Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  Container(
                    width: width,
                    height: height,
                    decoration: BoxDecoration(
                      color: mainBgColor,
                      borderRadius: BorderRadius.circular(60),
                      border: Border.all(color: mainColor),
                    ),
                  ),
                  Container(
                    height: height - 20,
                    width: width - 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Icon(
                      FontAwesomeIcons.instagram,
                      color: mainColor,
                      size: 40,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Text(
              'Click to sign in or create account',
              style: TextStyle(
                color: mainBlackColor,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Divider(),
          ),
        ],
      ),
    );
  }
}
