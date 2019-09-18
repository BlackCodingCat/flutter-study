import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget{
  Widget build(BuildContext context){
    return new MaterialApp(
      title: 'Cupetino导航组件集',
      theme: ThemeData.dark(),
      home: new MyPage(),
    );
  }
}

/**
 * 有状态组件
 */
class MyPage extends StatefulWidget{
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage>{
  Widget build(BuildContext context){
    return new CupertinoTabScaffold(
      tabBar: new CupertinoTabBar(
        backgroundColor: Colors.red,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text('主页')
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.chat),
            title: new Text('聊天')
          )
        ],
      ),
      tabBuilder: (context, index){
        //选项卡绑定的视图
        return new CupertinoTabView(
          builder: (context){
            switch(index){
              case 0: 
                return new HomePage();
                break;
              case 1:
                return new ChatPage();
                break;
              default: 
                return Container();
                break;
            }
          },
        );
      }
    );
  }
}

/**
 * 主页
 */
class HomePage extends StatelessWidget{
  Widget build(BuildContext context){
    // 页面内容
    return new CupertinoPageScaffold(
      child: Center(
        child: new Text(
          '主页',
          style: Theme.of(context).textTheme.button,),
      ),
      navigationBar: new CupertinoNavigationBar(
        middle: new Text('主页'),
      ),
    );
  }
}

/**
 * 聊天页面
 */
class ChatPage extends StatelessWidget{
  Widget build(BuildContext context){
    return new CupertinoPageScaffold(
      child: Center(
        child: new Text(
          '聊天',
          style: Theme.of(context).textTheme.button,),
      ),
      navigationBar: new CupertinoNavigationBar(
        middle: new Text('聊天面板'),
        leading: new Icon(CupertinoIcons.back),
        trailing: new Icon(CupertinoIcons.add),
      ),
    );
  }
}

