import 'package:flutter/material.dart';
import 'home_page.dart';

class LoginPage extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {

    final logo = Hero(
      tag: 'hero',
      child: Padding(
        padding: const EdgeInsets.only(top: 40.0),
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 48.0,
          child: Image.asset('assets/user.png'),
        ),
      ),
    );

    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: 'yourmail@mail.com',
      decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
      ),
    );

    final password = TextFormField(
      autofocus: false,
      initialValue: 'some password',
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
      ),
    );

    final loginButton = ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.blueAccent,
        elevation: 5.0,
        shape: RoundedRectangleBorder( //to set border radius to button
            borderRadius: BorderRadius.circular(30)
        ),
      ),
      onPressed: (){
        Navigator.of(context).pushNamed(HomePage.tag);
      },
      child: Text('Login',
      style: TextStyle(
        fontSize: 18.0,
        letterSpacing: 2.0,
        color: Colors.grey[200],
      ),),
    );

    final forgotLabel = TextButton(
      onPressed: (){},
      child: Text('Forgot password?',
        style: TextStyle(
          fontSize: 12.0,
          letterSpacing: 1.0,
          color: Colors.grey[400],
        ),)
    );
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              logo,
              SizedBox(height: 32.0),
              email,
              SizedBox(height: 8.0),
              password,
              SizedBox(height: 24.0),
              loginButton,
              forgotLabel,
            ],
          ),
        ),
      ),
    );
  }
}
