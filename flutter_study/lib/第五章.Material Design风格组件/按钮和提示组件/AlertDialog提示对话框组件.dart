// AlertDialog提示对话框组件

import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget{
  Widget build(BuildContext context){
    return new MaterialApp(
      title: 'AlertDialog提示对话框组件示例',
      home: new Scaffold(
        appBar: AppBar(
          title: new Text('AlertDialog提示对话框组件示例'),
        ),
        body: new AlertDialog(
          title: new Text('提示',style: TextStyle(color: Colors.red)),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                new Text('是否要删除?'),
                new Text('一旦删除数据将不可恢复!')
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: new Text('确定'),
              onPressed: (){},
            ),
            FlatButton(
              child: new Text('取消'),
              onPressed: (){},
            )
          ],
        ),
      ),
    );
  }
}