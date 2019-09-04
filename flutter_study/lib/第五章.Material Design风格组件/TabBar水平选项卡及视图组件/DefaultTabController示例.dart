import 'package:flutter/material.dart';

void main() => runApp(new DedaultTabControllerSample());

class DedaultTabControllerSample extends StatelessWidget{
  //选项卡数据
  final List<Tab> myTabs = <Tab>[
    Tab( text: '选项卡一'),
    Tab( text: '选项卡二'),
  ];

  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      // 用来组装TabBar和TabBarView
      home: DefaultTabController(
        length: myTabs.length,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: myTabs,
            ),
          ),
          body: TabBarView(
            children: myTabs.map((Tab tab) {
              return Center(
                child: Text(tab.text),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}