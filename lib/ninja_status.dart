import 'package:flutter/material.dart';

class NinjaCard extends StatefulWidget {
  static String tag = 'ninja-page';

  @override
  _NinjaCardState createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int ninjaLevel = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState((){
            ninjaLevel += 1;
          });
        },
        backgroundColor: Colors.blue[500],
        child: Icon(Icons.add,
            color: Colors.blue[100]),
      ),
      body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.blue,
                Colors.lightBlueAccent,
              ],
            ),
          ),
          padding: EdgeInsets.fromLTRB(20.0,30.0,20.0,0.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: CircleAvatar(
                      //backgroundColor: Colors.amberAccent,
                      backgroundImage: AssetImage('assets/amoslee.jpeg'),
                      radius: 50.0,
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                ),
                Divider(
                  height: 60.0,
                  color: Colors.blue[100],
                ),
                Text('NAME',
                    style: TextStyle(
                      color: Colors.white,
                      letterSpacing: 2.0,
                    )),
                SizedBox(height: 10.0),
                Text('Amos-Lee',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(height: 20.0),
                Text('Current Ninja Status',
                    style: TextStyle(
                      color: Colors.white,
                      letterSpacing: 2.0,
                    )),
                SizedBox(height: 10.0),
                Text('$ninjaLevel',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(height: 20.0),

                Row(
                    children: <Widget>[
                      Icon(
                        Icons.email_rounded,
                        color: Colors.white,
                      ),
                      SizedBox(width: 10.0),
                      Text('amos-lee@ninja.co.uk',
                          style: TextStyle(
                            color: Colors.white,
                            letterSpacing: 1.0,
                          ))
                    ]
                )
              ]
          )
      ),
    );
  }
}

