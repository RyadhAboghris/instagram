import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram/widgets/feed_post_widget.dart';
import 'package:instagram/widgets/profile_header_widget.dart';

import '../../utillites/utilities.dart';

class ProfileScreen extends StatefulWidget {
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: ListView(children: [
        profileHeaderWidgets(width * 0.1, width * 0.1),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                height: 30,
                width: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        mainColor,
                        mainYellowColor,
                      ],
                    )),
                child: Center(
                  child: Text(
                    'Follow',
                    style: TextStyle(
                        color: mainWhiteColor, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 30,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                height: 30,
                width: 80,
                decoration: BoxDecoration(
                  color: mainGreyColor.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(child: Icon(Icons.near_me_outlined)),
              ),
            ),
          ],
        ),
        infoCard('About me',
            'hello world hello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello world'),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            infoCard('Activity', '    worldhello worldhello worldhello world'),
            SizedBox(
              width: 50,
            ),
            infoCard('Location', '   Libya'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Social Network',
                    style: TextStyle(
                        color: mainBlackColor, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 3.0, left: 10),
                  child: Row(
                    children: [
                      Icon(FontAwesomeIcons.facebookSquare),
                      Icon(FontAwesomeIcons.linkedin),
                      Icon(FontAwesomeIcons.whatsappSquare),
                      Icon(FontAwesomeIcons.behanceSquare),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: infoCard('Favorite Tags', '  worldhello worldhello world'),
            ),
          ],
        ),
        FeedPostWidget('My Postes', mainColor)
      ]),
    );
  }

  Widget infoCard(String title, String description) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Text(
              title,
              style:
                  TextStyle(color: mainBlackColor, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              description,
              style: TextStyle(color: mainGreyColor, fontSize: 15),
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }
}
