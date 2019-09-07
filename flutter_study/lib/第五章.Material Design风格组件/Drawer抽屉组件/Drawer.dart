// Drawer组件
import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
  title: 'Drawer组件示例',
  home: new LayoutDemo(),
));

class LayoutDemo extends StatelessWidget{
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Drawer抽屉组件示例'),
      ),
 
      drawer: Drawer(
          child: ListView(
            children: <Widget>[
              //设置用户信息 头像、用户名、Email等
              UserAccountsDrawerHeader(
                accountName: new Text('小黑猫'),
                accountEmail: new Text('shenjiaqi@sc-edu.com'),
                currentAccountPicture: new CircleAvatar(
                  backgroundImage: new AssetImage("images/1.jpeg"),
                ),
                onDetailsPressed: (){},
                // 该属性本来是用来设置当前用户的其他账号的头像 这里来当QQ二维码图片展示
                otherAccountsPictures: <Widget>[
                  new Container(
                    child: Image.asset("images/code.jpeg"),
                  )
                ],
              ),
              ListTile(
                leading: new CircleAvatar(
                  child: new Icon(Icons.color_lens),
                ),
                title: new Text('个性装扮'),
              ),
              ListTile(
                leading: new CircleAvatar(
                  child: new Icon(Icons.photo),
                ),
                title: new Text('我的相册'),
              ),
              ListTile(
                leading: new CircleAvatar(
                  child: new Icon(Icons.wifi),
                ),
                title: new Text('免流量特权'),
              )
            ],
          ),
      ),
    );
  }
}