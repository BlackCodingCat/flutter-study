import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget{
  Widget build(BuildContext context){
    return new MaterialApp(
      title: 'Padding组件示例',
      home: LayoutDemo(),
    );
  }
}

class LayoutDemo extends StatelessWidget{
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: AppBar(
        title: Text('Padding内边距组件示例'),
      ),
      body: Center(
        // 父容器
        child: Container(
          width: 300,
          height: 300,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              width: 10,
              color: Colors.green
            ),
            borderRadius: BorderRadius.circular(8.0)
          ),
          padding: const EdgeInsets.all(60),
          // 子容器
          child: Container(
            width: 200,
            height: 200,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                width: 10,
                color: Colors.green
              ),
              borderRadius: BorderRadius.circular(8.0)
            ),
            child: new FlutterLogo(),
          ),
        ),
      ),
    );
  }
}