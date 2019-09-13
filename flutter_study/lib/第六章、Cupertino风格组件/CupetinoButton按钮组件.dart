import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget{
  Widget build(BuildContext context){
    return new MaterialApp(
      title: 'CupetinoButton示例',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('CupetinoButton示例'),
        ),
        body: new Center(
          child: new CupertinoButton(
            child: new Text('CupetinoButton'),
            color: Colors.blue,
            onPressed: (){},
          ),
        ),
      ),
    );
  }
}