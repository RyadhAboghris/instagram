import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../utillites/utilities.dart';
import '../../widgets/custom_input_widget.dart';

class RegisterScreen extends StatefulWidget {
  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(58.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(88.0),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                FontAwesomeIcons.instagram,
                                color: mainColor,
                                size: 40,
                              ),
                              Text(
                                ' Instagram Clone',
                                style: TextStyle(
                                  color: mainBlackColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Create your Account Now',
                            style: TextStyle(
                              color: mainBlackColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        customInputWidget(width, 'Enter your Name',
                            FontAwesomeIcons.userTie, false),
                        customInputWidget(width, 'Enter your Email',
                            FontAwesomeIcons.envelope, false),
                        customInputWidget(width, 'Enter your Phone',
                            FontAwesomeIcons.phoneAlt, false),
                        customInputWidget(width, 'Enter your Password',
                            FontAwesomeIcons.lock, true),
                        customInputWidget(width, 'Retype Password',
                            FontAwesomeIcons.lock, true),
                        Container(
                          width: width * 0.3,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: FlatButton(
                              onPressed: () {},
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Register',
                                  style: TextStyle(
                                      color: mainWhiteColor,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              color: mainBlueColor,
                            ),
                          ),
                        ),
                        Container(
                          width: width * 0.3,
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: FlatButton(
                              onPressed: () {
                                Navigator.pushReplacementNamed(context, '/');
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Have account Login ?',
                                  style: TextStyle(
                                      color: mainWhiteColor,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              color: mainColor,
                            ),
                          ),
                        ),
                      ]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
