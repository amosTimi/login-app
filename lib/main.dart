import 'package:flutter/material.dart';
import 'login_page.dart';
import 'home_page.dart';
import 'ninja_status.dart';

void main() => runApp(LoginApp());

class LoginApp extends StatelessWidget {

  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(),
    HomePage.tag: (context) => HomePage(),
    NinjaCard.tag: (context) => NinjaCard(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.lightBlue,
        fontFamily: 'Roboto',
      ),
      home: LoginPage(),
      routes: routes,
    );
  }
}
