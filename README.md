# Simple Date Picker

Simple Time Picker Widget for Flutter Apps.

## Getting Started
1. [Import It](#1-import-it)
2. [Use It](#2-use-it)
3. [Props](#3-properties)

### 1. Import it

```
import 'package:simple_time_picker/components/simple_time_picker.dart';
```

### 2. Use it
> Set the initTime.
```
  TimeOfDay _initTime  = DateTime.now();
```
> Create callback to get the value.
```
  void callback(val){
    print(val);
  }
```
> Call the dropdown.
```
new SimpleTimePicker(
    backgroundColor: Colors.amberAccent,
    callback: (val){
      callback(val);
    },
    initTime: _initTime,
    duration: Duration(milliseconds: 5000),
    shapeBorder: new RoundedRectangleBorder(borderRadius: new BorderRadius.all(Radius.circular(50.0))),
    titleColor: Colors.black,
    title: "Select Time",
  )
```

### 3. Properties
| Props             | Type                        | Default     | Required |
| -------------     |-----------------------------| ----------- | -------- |
| backgroundColor   | Color                       | Colors.blue | No       |
| callback          | Function                    | -           | Yes      |
| disabledColor     | Color                       | -           | No       |
| duration          | Duration                    | 2000 ms     | No       |
| initTime          | DateTime                    | -           | Yes      |
| padding           | EdgeInsetsGeometry          | -           | No       |
| shapeBorder       | RoundedRectangleBorder      | -           | No       |
| title             | String                      | -           | No       |
| titleColor        | Color                       | -           | No       |

01. backgroundColor
    > Set the color of widget.
02. callback
    > Callback function for catch value.
03. disabledColor
    > Set the color of disable widget.
04. duration
    > Duration of animation.
05. initDate
    > Set initial time of widget.
06. padding
    > Set padding of widget.
07. shapeBorder
    > Modify shape of widget.
08. title
    > Set title of widget.
09. titleColor
    > Set titleColor of widget.

For help getting started with Flutter, view our online
[documentation](https://flutter.io/).