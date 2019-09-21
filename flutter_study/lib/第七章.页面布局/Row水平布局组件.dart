import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget{
  Widget build(BuildContext context){
    return new MaterialApp(
      title: 'Row组件布局示例',
      home: new LayoutDemo(),
    );
  }
}

class LayoutDemo extends StatelessWidget{
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: AppBar(
        title: Text('Row组件布局示例'),
      ),
      body: Row(
        children: <Widget>[
          Expanded(
            child: Text('左侧文本'),
          ),
          Expanded(
            child: Text('中间文本'),
          ),
          Expanded(
            child: FittedBox(
              fit: BoxFit.contain,
              child: new FlutterLogo(),
            ),
          )
        ],
      ),
    );
  }
}