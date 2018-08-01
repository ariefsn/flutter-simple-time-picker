import 'package:flutter/material.dart';
import 'package:simple_time_picker/components/simple_time_picker.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TimeOfDay _initTime  = TimeOfDay.now();

  void callback(val){
    print(val);
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Center(
        child: new SimpleTimePicker(
          backgroundColor: Colors.amberAccent,
          callback: (val){
            callback(val);
          },
          initTime: _initTime,
          duration: Duration(milliseconds: 5000),
          shapeBorder: new RoundedRectangleBorder(borderRadius: new BorderRadius.all(Radius.circular(50.0))),
          titleColor: Colors.black,
          title: "Select Time",
        ),
      ),
    );
  }
}