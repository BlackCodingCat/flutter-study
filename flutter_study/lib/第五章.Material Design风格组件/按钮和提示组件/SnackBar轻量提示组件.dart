// SnackBar轻量提示组件

import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget{
  Widget build(BuildContext context){
    return new MaterialApp(
      title: 'SnackBar轻量提示组件示例',
      home: new Scaffold(
        appBar: AppBar(
          title: new Text('SnackBar轻量提示组件示例'),
          
        ),
        body: new Center(
          child: new Text(
            'SnackBar示例',
            style: TextStyle(fontSize: 28.0)
          ),
        ),
        floatingActionButton: new Builder(builder: (BuildContext context){
          return new FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: (){
              // 点击回调事件，弹出提示语句
              Scaffold.of(context).showSnackBar(new SnackBar(
                content: new Text('显示SnackBar'),
                backgroundColor: Colors.red,
              ));
            },
            shape: new CircleBorder(),
          );
        },),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      ),
    );
  }
}