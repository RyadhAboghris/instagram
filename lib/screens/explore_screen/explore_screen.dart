import 'package:flutter/material.dart';
import 'package:instagram/widgets/feed_post_widget.dart';

import '../../utillites/utilities.dart';

class ExploreScreen extends StatefulWidget {
  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Padding(
        padding: const EdgeInsets.all(18.0),
        child: Center(
          child: Text('Explore The New And Not Posts',
              style: TextStyle(
                  color: mainBlackColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 20)),
        ),
      ),
      Padding(
        
        padding: const EdgeInsets.all(8.0),
        child: FeedPostWidget('Explore',mainBlackColor),
      ),
    ]);
  }
}
