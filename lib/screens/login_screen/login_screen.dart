import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram/screens/register_account/register_screen.dart';
import 'package:instagram/widgets/alert_widget.dart';

import '../../utillites/utilities.dart';
import '../../widgets/custom_input_widget.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(28.0),
              child: Card(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(18.0),
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
                      customInputWidget(width, 'Enter your Email',
                          FontAwesomeIcons.envelope, false),
                      customInputWidget(width, 'Enter your Password',
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
                                'Login',
                                style: TextStyle(
                                    color: mainWhiteColor,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            color: mainBlueColor,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Container(
                                height: 2,
                                width: 100,
                                color: mainGreyColor,
                              )),
                          Text(
                            'OR',
                            style: TextStyle(
                                color: mainBlackColor,
                                fontWeight: FontWeight.bold),
                          ),
                          Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Container(
                                height: 2,
                                width: 100,
                                color: mainGreyColor,
                              )),
                        ],
                      ),
                      FlatButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            FontAwesomeIcons.facebookSquare,
                            color: mainBlueColor,
                          ),
                          label: Text(
                            'Login with facebook',
                            style: TextStyle(
                                color: mainBlueColor,
                                fontWeight: FontWeight.bold),
                          )),
                      FlatButton(
                          onPressed: () {
                            AlertWidgets.forgetPasswordInputWidget(
                                context, width, height);
                          },
                          child: Text(
                            'Forget password',
                            style: TextStyle(
                              color: mainBlueColor,
                            ),
                          )),
                    ]),
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(right: 28.0, left: 28),
          child: Card(
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                'Don\'t have an account',
              ),
              FlatButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/Register');
                  },
                  child: Text(
                    'Singup',
                    style: TextStyle(
                        color: mainBlueColor, fontWeight: FontWeight.bold),
                  )),
            ]),
          ),
        ),
      ],
    );
  }
}
