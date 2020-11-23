import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
    void main() => runApp( MaterialApp(
      theme: ThemeData(primaryColor : Colors.blueAccent, accentColor :Colors.white),
      home: SplashScreen(),
    ));

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() =>  _SplashScreenState();


}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), ()=>print("Splash Done"));
  }

  @override
    Widget build(BuildContext context) {
    return  Scaffold(
      body:  Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Colors.blueAccent),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 60.0,
                        child: Icon(
                          Icons.attach_money,
                            color: Colors.greenAccent,
                            size: 55.0,
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(top: 10.0)),
                      Text(
                          "MANI",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold
                      ),
                      )
                    ],
                  )
                ),
              ),
              Expanded(
                flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[CircularProgressIndicator(),
                      Padding(padding: EdgeInsets.only(top: 20.0),
                      ),
                      Text("Mobile Aided Note Identifier",style: TextStyle(color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.bold)
                      )
                    ],
                  ),
              )
            ],
          )
        ],
      ),
    );
  }
}
