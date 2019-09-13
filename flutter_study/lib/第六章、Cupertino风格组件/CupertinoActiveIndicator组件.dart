
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget{
  Widget build(BuildContext context){
    return new MaterialApp(
      title: 'CupertinoActivityIndicator示例',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('CupertinoActivityIndicator示例'),
        ),
        body: new Center(
          child: new CupertinoActivityIndicator(
            radius: 60.0,
            animating: true,
          ),
        ),
      ),
    );
  }
}