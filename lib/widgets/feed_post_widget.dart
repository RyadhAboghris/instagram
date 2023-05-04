// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../utillites/utilities.dart';

class FeedPostWidget extends StatefulWidget {
  String postTitle;
  Color savedIconColor;
  FeedPostWidget(
    this.postTitle,
    this.savedIconColor,
  );
  @override
  State<FeedPostWidget> createState() => _FeedPostWidgetState();
}

class _FeedPostWidgetState extends State<FeedPostWidget> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.postTitle,
              style: TextStyle(
                  color: mainBlackColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
            Row(
              children: [
                Text('Popular',
                    style: TextStyle(
                        color: mainBlackColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 11)),
                Icon(Icons.arrow_drop_down),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.55,
              width: width * 0.66,
              child: GridView.count(
                childAspectRatio: 4/3,
                crossAxisCount: 3,
                children: List.generate(
                    10, (index) => _postCard(storyImages[1], profileImages[1])),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _postCard(String image, String profileImage) {
    return Padding(
      padding: const EdgeInsets.only(right: 4.0, left: 4),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              Stack(
                alignment: Alignment.topRight,
                children: [
                  Container(
                    height: 180,
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(image),
                      ),
                    ),
                  ),
                  Container(
                    height: 180,
                    width: 300,
                    decoration: BoxDecoration(
                      color: mainYellowColor.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ],
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: mainColor),
                    ),
                  ),
                  Container(
                    height: 26,
                    width: 26,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(profileImage),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Center(
                      child: Stack(
                        alignment: AlignmentDirectional.center,
                        children: [
                          Container(
                            width: 25,
                            height: 25,
                            decoration: BoxDecoration(
                              color: mainBgColor,
                              borderRadius: BorderRadius.circular(60),
                              border: Border.all(color: mainColor),
                            ),
                          ),
                          Container(
                            height: 20,
                            width: 20,
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
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        'ryadhaboghris',
                        style: TextStyle(
                            color: mainBlackColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 11),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.favorite,
                      color: Colors.redAccent,
                      size: 18,
                    ),
                    Text('13k',
                        style: TextStyle(
                            color: mainBlackColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 11)),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.chat_bubble_outline_outlined,
                      color: mainBlackColor,
                      size: 18,
                    ),
                    Text('6k',
                        style: TextStyle(
                            color: mainBlackColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 11)),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.bookmark_border,
                      color: widget.savedIconColor,
                      size: 18,
                    ),
                    Text('2k',
                        style: TextStyle(
                            color: mainBlackColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 11)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
