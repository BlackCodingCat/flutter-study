import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget{
  Widget build(BuildContext context){
    return new MaterialApp(
      title: 'Center居中组件示例',
      home: LayoutDemo(),
    );
  }
}

class LayoutDemo extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Center居中组件示例'),
      ),
      body: Center(
        child: Text(
          'Hello World!',
          style: TextStyle(
            color: Colors.blue,
            fontSize: 32,
          ),
        ),
      ),
    );
  }
}