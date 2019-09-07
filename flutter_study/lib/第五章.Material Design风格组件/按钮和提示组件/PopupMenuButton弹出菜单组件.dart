// PopupMenuButton组件

import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

// 会控菜单项
enum ConferenceItem { AddMember, LockConference, ModifyLayout, TurnoffAll }

class MyApp extends StatelessWidget{
  Widget build(BuildContext context){
    return new MaterialApp(
      title: 'PopupMenuButton组件示例',
      home: new Scaffold(
        appBar: AppBar(
          title: new Text('PopupMenuButton组件示例'),
        ),
        body: new Center(
          child: FlatButton(
            onPressed: (){},
            child: new PopupMenuButton<ConferenceItem>(
              onSelected: (ConferenceItem result){},
              itemBuilder: (BuildContext context) => // 菜单项构造器
                <PopupMenuEntry<ConferenceItem>>[
                  const PopupMenuItem<ConferenceItem>(
                    value: ConferenceItem.AddMember,
                    child: Text('添加成员'),
                  ),
                  const PopupMenuItem<ConferenceItem>(
                    value: ConferenceItem.LockConference,
                    child: Text('锁定会议'),
                  ),
                  const PopupMenuItem<ConferenceItem>(
                    value: ConferenceItem.ModifyLayout,
                    child: Text('修改布局'),
                  ),
                  const PopupMenuItem<ConferenceItem>(
                    value: ConferenceItem.TurnoffAll,
                    child: Text('挂断所有'),
                  ),
                ]
            ),
          ),
        ),
      ),
    );
  }
}