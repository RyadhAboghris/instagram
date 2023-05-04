import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram/widgets/alert_widget.dart';
import 'package:instagram/widgets/custom_input_widget.dart';

import '../../utillites/utilities.dart';

class SettingsScreen extends StatefulWidget {
  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0, top: 20),
            child: Text(
              'Edit your profile',
              style: TextStyle(
                color: mainBlackColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 20),
            child: Text(
              'Upload profile image',
              style: TextStyle(
                color: mainBlackColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 20),
            child: Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    color: mainBgColor,
                    borderRadius: BorderRadius.circular(60),
                    border: Border.all(color: mainColor),
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Icon(
                    FontAwesomeIcons.images,
                    color: mainColor,
                    size: 40,
                  ),
                ),
              ],
            ),
          ),
          _infoCard('Full Name', 'Ryadh Aboghris', width, 1),
          _infoCard('User Name', 'ryadhaboghris', width, 1),
          _infoCard(
              'About me',
              'Iam Iam Iam Iam Iam Iam Iam Iam Iam Iam Iam Iam Iam Iam Iam Iam Iam Iam Iam Iam Iam Iam Iam Iam Iam Iam Iam Iam Iam Iam Iam Iam Iam Iam Iam Iam ',
              width,
              2),
          _infoCard(
              'Activity', 'Football is the best play in the world', width, 1),
          _infoCard('Location', 'Libya', width, 1),
          _infoCard('Favorite Tags', '#Sport , #design , #marketing', width, 1),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 20),
            child: Text(
              'Upload Social Media Links',
              style: TextStyle(
                color: mainBlackColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          _infoSocilMediaCard(FontAwesomeIcons.facebookSquare,
              'www.facebook.com/ryadhaboghris', width, 1),
          _infoSocilMediaCard(FontAwesomeIcons.linkedin,
              'www.linkedin.com/ryadhaboghris', width, 1),
          _infoSocilMediaCard(FontAwesomeIcons.whatsappSquare,
              'www.whatsapp.com/ryadhaboghris', width, 1),
          _infoSocilMediaCard(FontAwesomeIcons.behanceSquare,
              'www.behance.com/ryadhaboghris', width, 1),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 20),
            child: Text(
              'Upadte Your Password',
              style: TextStyle(
                color: mainBlackColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: FlatButton.icon(
              onPressed: () {
                AlertWidgets.updatePasswordInputWidget(context, width, height);
              },
              icon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(FontAwesomeIcons.lock, color: mainWhiteColor),
              ),
              label: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Change Password',
                  style: TextStyle(color: mainWhiteColor),
                ),
              ),
              color: mainBlackColor,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: FlatButton.icon(
                onPressed: () {},
                icon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(FontAwesomeIcons.upload, color: mainWhiteColor),
                ),
                label: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Update Information',
                    style: TextStyle(color: mainWhiteColor),
                  ),
                ),
                color: mainColor,
              ),
            ),
          ),
        ]),
      ),
    );
  }

  Widget _infoCard(String title, String info, double width, int lines) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 20),
          child: Text(
            title,
            style: TextStyle(
              color: mainBlackColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: width * 0.5,
            child: TextField(
              cursorColor: mainColor,
              maxLines: lines,
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
                hintText: info,
                hintStyle: TextStyle(color: mainGreyColor),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _infoSocilMediaCard(
      IconData icon, String info, double width, int lines) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 30.0, top: 20),
          child: Icon(
            icon,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: width * 0.3,
            child: TextField(
              cursorColor: mainColor,
              maxLines: lines,
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
                hintText: info,
                hintStyle: TextStyle(color: mainGreyColor),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
