// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:html';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:instagram/widgets/alert_widget.dart';
import 'package:vertical_tabs/vertical_tabs.dart';

import 'package:instagram/screens/explore_screen/explore_screen.dart';
import 'package:instagram/screens/profile_screen/profile_screen.dart';
import 'package:instagram/screens/saved_screen/saved_screen.dart';
import 'package:instagram/widgets/header_menu_whitout_login_widget.dart';
import 'package:instagram/widgets/profile_header_widget.dart';

import '../screens/feed_screen/feed_screen.dart';
import '../screens/login_screen/login_screen.dart';
import '../screens/settings/settings_screen.dart';
import '../utillites/utilities.dart';

class MenuWidget extends StatefulWidget {
  bool isLogin;
  bool hasImage;
  MenuWidget(this.isLogin, this.hasImage);

  @override
  State<MenuWidget> createState() => _MenuWidgetState();
}

class _MenuWidgetState extends State<MenuWidget> {
  Uint8List uploadImage;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: Container(
            child: VerticalTabs(
              tabsWidth: width * 0.25,
              initialIndex: 4,
              indicatorColor: mainBlackColor,
              selectedTabBackgroundColor: Colors.transparent,
              backgroundColor: mainBgColor,
              tabs: <Tab>[
                Tab(
                  child: widget.isLogin
                      ? profileHeaderWidgets(120, 120)
                      : HeaderMenuWhitoutLoginWidget(90, 90),
                ),
                Tab(
                  child: tabObject(Icons.home_outlined, 'Feed'),
                ),
                Tab(
                  child: tabObject(Icons.offline_bolt_outlined, 'Explore'),
                ),
                Tab(
                  child: tabObject(Icons.bookmark_border, 'Saved'),
                ),
                Tab(
                  child: tabObject(Icons.settings_outlined, 'Settings'),
                ),
                Tab(
                  child: tabObject(Icons.logout, 'Logout'),
                ),
              ],
              contents: <Widget>[
                widget.isLogin ? ProfileScreen() : LoginScreen(),
                // FeedScreen(),
                FeedScreen(uploadImageFunction, widget.hasImage, uploadImage),
                ExploreScreen(),
                SavedScreen(),
                SettingsScreen(),
                Container(
                  child: Text(''),
                  // child: AlertWidgets.logoutInputWidget(context,width,height),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget tabObject(IconData sectionIcon, String sectionTitle) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Icon(
                  sectionIcon,
                  color: mainBlackColor,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, top: 4),
                child: Text(
                  sectionTitle,
                  style: TextStyle(
                    color: mainBlackColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void uploadImageFunction() {
    InputElement uploadInput = FileUploadInputElement();
    uploadInput.click();

    uploadInput.onChange.listen((e) {
      final files = uploadInput.files;
      if (files.length != 0) {
        final file = files[0];

        FileReader reader = FileReader();

        reader.onLoadEnd.listen((e) {
          setState(() {
            widget.hasImage = true;
            uploadImage = reader.result;
          });
          reader.onError.listen((fileError) {
            setState(() {
              print(fileError.toString());
            });
          });
        });
      }
    });
  }
}
