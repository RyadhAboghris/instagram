// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../utillites/utilities.dart';

class profileHeaderWidgets extends StatelessWidget {
  double width, height;
  profileHeaderWidgets(
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
                    height: height-20,
                    width: width-20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(''),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Ryadh Aboghris',
              style: TextStyle(
                color: mainBlackColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text(
            '@ryadaboghris',
            style: TextStyle(
              color: mainColor,
              fontWeight: FontWeight.bold,
              fontSize: 10,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8, top: 15, left: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text(
                      '19',
                      style: TextStyle(
                          color: mainBlackColor, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Posts',
                      style: TextStyle(
                          color: mainGreyColor, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 40,
                    width: 2,
                    color: mainGreyColor.withOpacity(0.4),
                  ),
                ),
                Column(
                  children: [
                    Text(
                      '8.3k',
                      style: TextStyle(
                          color: mainBlackColor, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Followers',
                      style: TextStyle(
                          color: mainGreyColor, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 40,
                    width: 2,
                    color: mainGreyColor.withOpacity(0.4),
                  ),
                ),
                Column(
                  children: [
                    Text(
                      '378',
                      style: TextStyle(
                          color: mainBlackColor, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Following',
                      style: TextStyle(
                          color: mainGreyColor, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
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
