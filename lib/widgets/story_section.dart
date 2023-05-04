import 'package:flutter/material.dart';

import '../utillites/utilities.dart';

class StorySection extends StatefulWidget {
  @override
  State<StorySection> createState() => _StorySectionState();
}

class _StorySectionState extends State<StorySection> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return _storiesSection(width);
  }

  Widget _storiesSection(double width) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'stories',
              style: TextStyle(
                  color: mainGreyColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
            Row(
              children: [
                Text('Watch All',
                    style: TextStyle(
                        color: mainBlackColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 11)),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Row(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: 120,
                      width: 80,
                      decoration: BoxDecoration(
                        color: mainColor,
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(''),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){},
                      child: Container(
                        height: 120,
                        width: 80,
                        decoration: BoxDecoration(
                          color: mainColor.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    Icon(Icons.add,
                        size: 40, color: mainWhiteColor.withOpacity(0.5)),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  height: 120,
                  width: width * 0.58,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: storyImages.length,
                      itemBuilder: (context, index) {
                        return _storyCard(
                            storyImages[index], profileImages[index]);
                      }),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget _storyCard(String image, String profileImage) {
    return Padding(
      padding: const EdgeInsets.only(right: 4.0, left: 4),
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              Container(
                height: 120,
                width: 80,
                decoration: BoxDecoration(
                  color: mainColor,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(image),
                  ),
                ),
              ),
              Container(
                height: 120,
                width: 80,
                decoration: BoxDecoration(
                  color: mainYellowColor.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(20),
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
    );
  }
}
