import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget{
  Widget build(BuildContext context){
    return new MaterialApp(
      title: 'FittedBox填充布局组件',
      home: new LayoutDemo(),
    );
  }
}

class LayoutDemo extends StatelessWidget{
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: AppBar(
        title: Text('FittedBox填充布局组件'),
      ),
      body: Container(
        width: 250,
        height: 250,
        color: Colors.grey,
        child: FittedBox(
          fit: BoxFit.contain,
          alignment: Alignment.topLeft,
          child: Container(
            color: Colors.deepOrange,
            child: Text('缩放布局',
            style: TextStyle(fontSize: 10)),
          ),
        ),
      ),
    );
  }
}