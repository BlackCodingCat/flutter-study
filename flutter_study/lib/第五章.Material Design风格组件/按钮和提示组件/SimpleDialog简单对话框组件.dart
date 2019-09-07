// SimpleDialog组件

import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget{
  Widget build(BuildContext context){
    return new MaterialApp(
      title: 'SimpleDialog组件',
      home: new Scaffold(
        appBar: AppBar(
          title: new Text('SimpleDialog简单对话框组件'),
        ),
        body: Center(
          child: SimpleDialog(
            title: const Text('对话框标题'),
            children: <Widget>[
              SimpleDialogOption(
                onPressed: () {},
                child: const Text('第一行内容'),
              ),
              SimpleDialogOption(
                onPressed: (){},
                child: const Text('第二行内容'),
              )
            ],
          ),
        ),
      ),
    );
  }
}