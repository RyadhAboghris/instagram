import 'package:flutter/material.dart';
import 'package:instagram/widgets/feed_post_widget.dart';

import '../../../utillites/utilities.dart';

class SavedScreen extends StatefulWidget {
  @override
  State<SavedScreen> createState() => _SavedScreenState();
}

class _SavedScreenState extends State<SavedScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Padding(
        padding: const EdgeInsets.all(18.0),
        child: Center(
          child: Text('Explore your favourite posts',
              style: TextStyle(
                  color: mainBlackColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 20)),
        ),
      ),
      Padding(
        
        padding: const EdgeInsets.all(8.0),
        child: FeedPostWidget( 'Saved',mainColor),
      ),
    ]);
  }
}
