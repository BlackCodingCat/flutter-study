import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget{
  Widget build(BuildContext context){
    return new MaterialApp(
      title: 'Column竖直布局组件',
      home: new LayoutDemo(),
    );
  }
}

class LayoutDemo extends StatelessWidget{
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: AppBar(
        title: Text('Column竖直布局组件'),
      ),
      body: Column(
        children: <Widget>[
          Text('11111111111'),
          Text('22222222222'),
          Expanded(
            child: FittedBox(
              fit: BoxFit.contain,
              child: new FlutterLogo(),
            )
          )
        ],
      ),
    );
  }
}