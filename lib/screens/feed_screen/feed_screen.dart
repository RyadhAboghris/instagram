// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import 'package:instagram/utillites/utilities.dart';
import 'package:instagram/widgets/feed_post_widget.dart';

import '../../../widgets/story_section.dart';
import '../../../widgets/top_feed_section.dart';

class FeedScreen extends StatefulWidget {
  Function uploadPost;
  bool hasImage;
  Uint8List uploadImage;
  FeedScreen(this.uploadPost, this.hasImage, this.uploadImage);
  @override
  State<FeedScreen> createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  bool isMessage = true;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(22.0),
        child: Column(
          children: [
            TopFeedSection(
                isMessage: isMessage,
                width: width,
                uploadPost: () {
                  _onAlertUploadPostButtonsPressed(context, width, height);
                }),
            SizedBox(
              height: 20,
            ),
            StorySection(),
            SizedBox(
              height: 20,
            ),
            FeedPostWidget('Feed', mainBlackColor),
          ],
        ),
      ),
    );
  }
}

// Alert with multiple and custom buttons
_onAlertUploadPostButtonsPressed(context, double width, double height) {
  Alert(
    context: context,
    title: '',
    content: Container(
      height: height * 0.5,
      width: width * 0.5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: ExactAssetImage(
                    'assets/images/floppy-disk.png',
                  )),
            ),
          ),
          Container(
            height: 80,
            width: 200,
            child: Column(
              children: [
                Text(
                  'Click to select the image',
                  style: TextStyle(fontSize: 15),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FlatButton.icon(
                    onPressed: () {},
                    icon: Container(
                        height: 40,
                        width: 40,
                        child: Icon(
                          FontAwesomeIcons.cloudUploadAlt,
                        )),
                    label: Text('Upload Image'),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: width * 0.5,
              height: 150,
              child: TextField(
                cursorColor: mainColor,
                maxLines: 10,
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
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  fillColor: mainBgColor,
                  hintText: 'What is at your mind',
                  hintStyle: TextStyle(color: mainGreyColor),
                ),
              ),
            ),
          ),
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
          "Confirm",
          style: TextStyle(color: mainWhiteColor, fontSize: 18),
        ),
        onPressed: () => Navigator.pop(context),
      )
    ],
  ).show();
}
