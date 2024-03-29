import 'package:flutter/material.dart';

void main() => runApp(new TabBarSample());

class TabBarSample extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      // 添加DefaultTabController关联TabBar和TabBarView
      home: new DefaultTabController(
        length: items.length, //选项卡的数量
        child: new Scaffold(
          appBar: AppBar(
            title: Text('TabBar选项卡示例'),
            bottom: TabBar(
              isScrollable: true,
              tabs: items.map((ItemView item){
                return new Tab(
                  text: item.title,
                  icon: new Icon(item.icon),
                );
              }).toList(),
            ),
          ),
          // 添加选项卡视图
          body: new TabBarView(
            children: items.map((ItemView item){
              return new Padding(
                padding: const EdgeInsets.all(16.0),
                child: new SelectedView(item: item),
              );
            }).toList(),
          ),
        ),
      )
    );
  }
}

// 视图项数据
class ItemView{
  // 构造函数
  const ItemView({this.title,this.icon});
  final String title; //标题
  final IconData icon; //图标
}

// 选项卡的类目，组装数据
const List<ItemView> items = <ItemView>[
  const ItemView(title: '自驾', icon: Icons.directions_car),
  const ItemView(title: '自行车', icon: Icons.directions_bike),
  const ItemView(title: '轮船', icon: Icons.directions_boat),
  const ItemView(title: '公交车', icon: Icons.directions_bus),
  const ItemView(title: '火车', icon: Icons.directions_railway),
  const ItemView(title: '步行', icon: Icons.directions_walk),
  const ItemView(title: '轮船', icon: Icons.directions_boat),
  const ItemView(title: '公交车', icon: Icons.directions_bus),
  const ItemView(title: '火车', icon: Icons.directions_railway),
  const ItemView(title: '步行', icon: Icons.directions_walk),
];

// 被选中的视图
class SelectedView extends StatelessWidget{
  const SelectedView({Key key, this.item}) : super(key: key); //参数

  // 视图数据
  final ItemView item;

  @override
  Widget build(BuildContext context){
    // 获取文本主题样式
    final TextStyle textStyle = Theme.of(context).textTheme.display1;
    return new Card(
      color: Colors.white,
      child: new Center(
        child: new Column(
          mainAxisSize: MainAxisSize.min, // 垂直方向最小化处理
          crossAxisAlignment: CrossAxisAlignment.center, // 水平方向居中对齐
          children: <Widget>[
            new Icon(item.icon,size: 128.0,color: textStyle.color),
            new Text(item.title,style:textStyle)
          ],
        ),
      ),
    );
  }
}