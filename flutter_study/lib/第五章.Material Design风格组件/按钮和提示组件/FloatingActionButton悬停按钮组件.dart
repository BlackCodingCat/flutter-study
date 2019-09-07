// FloatingActionButton组件
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget{
  Widget build(BuildContext context){
    return new MaterialApp(
      title: 'FloatingActionButton组件示例',
      home: new Scaffold(
        appBar: AppBar(
          title: new Text('FloatingActionButton组件示例'),
        ),
        body: Center(
          child: new Text(
            'FloatingActionButton示例',
            style: TextStyle(fontSize: 28.0,color: Colors.red)
          ),
        ),
        floatingActionButton: new Builder(builder: (BuildContext context){
          return new FloatingActionButton(
            child: new Icon(Icons.add),
            // 提示信息
            tooltip: '请点击FloatingActionButton',
            // 前景色为白色
            foregroundColor: Colors.white,
            // 背景色为蓝色
            backgroundColor: Colors.blue,
            // 未点击阴影值
            elevation: 7.0,
            // 点击阴影值
            highlightElevation: 14.0,
            // 点击回调事件
            onPressed: (){
              Scaffold.of(context).showSnackBar(new SnackBar(
                content: new Text('你点击了FloatingActionButton按钮')
              ));
            },
            mini: false,
            // 圆形边
            shape: new CircleBorder(),
            isExtended: false,
          );
        }),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat //居中放置,
      ),
    );
  }
}