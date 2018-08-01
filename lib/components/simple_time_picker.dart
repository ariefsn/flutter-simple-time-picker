import 'dart:async';

import 'package:flutter/material.dart';

class SimpleTimePicker extends StatefulWidget {
  SimpleTimePicker({
    this.backgroundColor = Colors.blue,
    @required this.callback,
    this.duration = const Duration(milliseconds: 2000),
    this.disabledColor,
    @required this.initTime,
    this.padding,
    this.shapeBorder,
    this.title,
    this.titleColor,
  });

  final Color backgroundColor;
  final Function callback;
  final Color disabledColor;
  final Duration duration;
  final TimeOfDay initTime;
  final RoundedRectangleBorder shapeBorder;
  final EdgeInsetsGeometry padding;
  final String title;
  final Color titleColor;

  @override
  _SimpleTimePickerState createState() => _SimpleTimePickerState();
}

class _SimpleTimePickerState extends State<SimpleTimePicker> {
  TimeOfDay _initTime;

  Future<Null> _selectTime(BuildContext context) async {
    final TimeOfDay picked = await showTimePicker(
      context: context,
      initialTime: _initTime
    );

    if (picked != null && picked != _initTime) {
      setState(() {
        _initTime = picked;
      });
      widget.callback(_initTime);
    }
  }

  @override
    void initState() {
      // TODO: implement initState
      super.initState();
      _initTime = widget.initTime;
    }

  @override
  Widget build(BuildContext context) {
    return new RaisedButton(
      disabledColor: widget.disabledColor,
      color: widget.backgroundColor,
      animationDuration: widget.duration,
      colorBrightness: Brightness.dark,
      textColor: widget.titleColor,
      shape: widget.shapeBorder,
      child: new Text(widget.title != null ? widget.title : "Select Time" + " : " + _initTime.toString()),
      onPressed: () => _selectTime(context),
      padding: widget.padding,
    );
  }
}