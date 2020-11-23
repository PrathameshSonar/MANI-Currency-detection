
import 'package:flutter/material.dart';

void main() => runApp( MaterialApp(
  theme: ThemeData(primaryColor : Colors.blueAccent, accentColor :Colors.white),
  home: CameraActivity(),
));

class CameraActivity extends StatefulWidget {
  @override
  _CameraActivityState createState() => _CameraActivityState();
}

class _CameraActivityState extends State<CameraActivity> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
