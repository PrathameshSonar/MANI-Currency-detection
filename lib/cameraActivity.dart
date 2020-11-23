

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      theme:
          ThemeData(primaryColor: Colors.blueAccent, accentColor: Colors.white),
      home: CameraActivity(),
    ));

class CameraActivity extends StatefulWidget {
  @override
  _CameraActivityState createState() => _CameraActivityState();
}

class _CameraActivityState extends State<CameraActivity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Scan Currency')),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          RaisedButton(
            onPressed: () {},
            color: Colors.blueAccent,
            child: const Text('Torch ON', style: TextStyle(fontSize: 20)),
          ),

        ],
      ),
    );
  }
}
