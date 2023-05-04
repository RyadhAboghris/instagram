import 'package:flutter/material.dart';
import 'package:instagram/screens/login_screen/login_screen.dart';
import 'package:instagram/screens/register_account/register_screen.dart';
import 'package:instagram/screens/starter_screen/starter_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram Clone',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => StarterScreen(false),
        '/Register': (context) => RegisterScreen(),
        '/Login': (context) => StarterScreen(true),
        '/Logout': (context) => StarterScreen(false),
      },
    );
  }
}
