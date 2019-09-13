import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget{
  Widget build(BuildContext context){
    return new MaterialApp(
      title: 'CupertinoAlertDialog对话框组件示例',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('CupertinoAlertDialog对话框组件示例'),
        ),
        body: new Center(
          child: new CupertinoAlertDialog(
            title: new Text('提示'),
            content: new SingleChildScrollView(
              child: new ListBody(
                children: <Widget>[
                  new Text('是否删除？'),
                  new Text('一旦删除将不可恢复哦~')
                ],
              ),
            ),
            actions: <Widget>[
              new CupertinoDialogAction(
                child: new Text('确认'),
                onPressed: (){},
              ),
              new CupertinoDialogAction(
                child: new Text('取消'),
                onPressed: (){},
              )
            ],
          ),
        ),
      ),
    );
  }
}