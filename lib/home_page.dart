import 'package:flutter/material.dart';
import 'ninja_status.dart';

class HomePage extends StatelessWidget {
  static String tag = 'home-page';

  final routes = <String, WidgetBuilder>{
    NinjaCard.tag: (context) => NinjaCard(),
  };

  @override
  Widget build(BuildContext context) {
    final ucard = Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: CircleAvatar(
          radius: 72.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/amoslee.jpeg'),
        ),
      ),
    );

    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Welcome!',
         style: TextStyle(
           fontSize: 16.0,
           letterSpacing: 2.0,
           color: Colors.grey[100],
         ),
      ),
    );

    final description = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        "Hi! I'm Amos. Welcome to my app. I'm a software developer - mobile and web tracks"
            " and program in both dart and python languages. I'm exited about software development"
            " and look forward to using my skills and expertise to solve problems and provide solutions.",
        style: TextStyle(
          letterSpacing: 1.0,
          fontSize: 14.0,
          color: Colors.white,
        ),
        textAlign: TextAlign.center,
      ),
    );

    final ninjastatus = TextButton(
      style: TextButton.styleFrom(
        backgroundColor: Colors.blue[500],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(48.0),
        ),
      ),
      onPressed: (){
        Navigator.of(context).pushNamed(NinjaCard.tag);
      },
      child: Text('See Ninja Status',
      style: TextStyle(
        fontSize: 16.0,
        letterSpacing: 2.0,
        color: Colors.grey[200],
      ),),
    );

    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(28.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.blue,
          Colors.lightBlueAccent,
        ]),
      ),
      child: Column(
        children: <Widget>[
          ucard, welcome, description, ninjastatus,
        ],
      ),
    );
    return Scaffold(
      body: body,
    );
  }
}
