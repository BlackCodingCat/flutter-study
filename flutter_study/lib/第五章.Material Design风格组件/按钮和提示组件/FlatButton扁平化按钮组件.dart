// FlatButton组件

import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget{
  Widget build(BuildContext context){
    return new MaterialApp(
      title: 'FlatButton组件',
      home: new Scaffold(
        appBar: AppBar(
          title: new Text('FlatButton组件'),
        ),
        body: Center(
          child: FlatButton(
            onPressed: (){},
            child: new Text(
              'FlatButton示例',
              style: TextStyle(color: Colors.blueAccent,fontSize: 30.0),
            ),
          ),
        ),
      ),
    );
  }
}