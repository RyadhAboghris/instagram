// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../widgets/menu_widget.dart';

class StarterScreen extends StatelessWidget {
  bool isLogin;
  StarterScreen(this.isLogin);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: MenuWidget(isLogin, false),
      ),
    );
  }

  //create tap object

}
