import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget{
  Widget build(BuildContext context){
    return new MaterialApp(
      title: 'Container容器布局示例',
      home: LayoutDemo(),
    );
  }
}

class LayoutDemo extends StatelessWidget{
  // 创建一个组件名为container
  Widget container = Container(
    // 给Container增加装饰效果
    decoration: BoxDecoration(
      color: Colors.blueGrey
    ),
    // 子元素指定为一个垂直水平嵌套布局的组件
    child: Column(
      children: <Widget>[
        //第一行
        Row(
          children: <Widget>[
            Expanded(
              child: Container(
                width: 150.0,
                height: 150.0,
                decoration: BoxDecoration(
                  color: Colors.green,
                  border: Border.all(
                    width: 10.0,
                    color: Colors.lightGreen
                  ),
                  borderRadius: BorderRadius.all(const Radius.circular(8.0))
                ),
                margin: const EdgeInsets.all(8.0),
                child: Image.asset('images/1.jpeg'),
              ),
            ),
            
            Expanded(
              child: Container(
                width: 150.0,
                height: 150.0,
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  border: Border.all(
                    width: 10.0,
                    color: Colors.yellowAccent
                  ),
                  borderRadius: BorderRadius.all(const Radius.circular(8.0))
                ),
                margin: const EdgeInsets.all(8.0),
                child: Image.asset('images/2.jpeg'),
              ),
            ),

            Expanded(
              child: Container(
                width: 150.0,
                height: 150.0,
                decoration: BoxDecoration(
                  color: Colors.black,
                  border: Border.all(
                    width: 10.0,
                    color: Colors.deepOrange
                  ),
                  borderRadius: BorderRadius.all(const Radius.circular(8.0))
                ),
                margin: const EdgeInsets.all(8.0),
                child: Image.asset('images/3.jpeg'),
              ),
            )
          ],
        ),

        // 第二行
        Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                width: 150.0,
                height: 150.0,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all(
                    width: 10.0,
                    color: Colors.blue
                  ),
                  borderRadius: BorderRadius.all(const Radius.circular(8.0))
                ),
                margin: EdgeInsets.all(8.0),
                child: Image.asset('images/1.jpeg'),
              ),
            ),

            Expanded(
              flex: 2,
              child: Container(
                width: 150.0,
                height: 150.0,
                decoration: BoxDecoration(
                  color: Colors.red,
                  border: Border.all(
                    width: 10.0,
                    color: Colors.black45
                  ),
                  borderRadius: BorderRadius.all(const Radius.circular(8.0))
                ),
                margin: const EdgeInsets.all(8.0),
                child: Image.asset('images/3.jpeg'),
              ),
            )
          ],
        )
      ],
    ),
  );


  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Container容器布局示例'),
      ),
      body: container,
    );
  }
}