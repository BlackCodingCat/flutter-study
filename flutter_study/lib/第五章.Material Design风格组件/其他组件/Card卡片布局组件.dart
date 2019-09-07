// Card卡片组件abstract

import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget{
  Widget build(BuildContext context){
    return new MaterialApp(
      title: 'Card卡片组件示例',
      home: new Scaffold(
        appBar: AppBar(
          title: new Text('Card卡片组件示例'),
        ),
        body:Center(
          child: new SizedBox(
            height: 250.0,
            child: Card(
              child: new Column(
                children: <Widget>[
                  // 卡片的一栏
                  new ListTile(
                    title: new Text(
                      '南京市栖霞区南京邮电大学仙林校区文苑路9号',
                      style: TextStyle(
                        fontWeight: FontWeight.w300
                      ),
                    ),
                    subtitle: new Text('南京邮电大学'), // 小标题
                    leading: new Icon(
                      Icons.home,
                      color: Colors.lightBlue
                    ),
                  ),
                  new Divider(),
                  new ListTile(
                    title: new Text(
                      '南京市玄武区长发科技大厦222号1703室',
                      style: TextStyle(
                        fontWeight: FontWeight.w300
                      ),
                    ),
                    subtitle: new Text('赛诚智慧'), // 小标题
                    leading: new Icon(
                      Icons.home,
                      color: Colors.lightBlue
                    ),
                  ),
                  new Divider(),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}