// TextField文本框组件abstract
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget{
  Widget build(BuildContext context){
    //添加文本编辑控制器，监听文本输入内容变化
    final TextEditingController controller = TextEditingController();
    controller.addListener((){
      print('你输入的内容为: ${controller.text}');
    });

    return new MaterialApp(
      title: 'TextField组件示例',
      home: new Scaffold(
        appBar: AppBar(
          title: new Text('TextField组件示例'),
        ),
        body: new Center(
          // 设置20内边距
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              // 绑定controller获取输入的文本信息
              controller: controller,
              // 最大长度: 设置此项会让TextFild右下角有一个输入数量的统计字符串
              maxLength: 10,
              // 最大行数
              maxLines: 1,
              // 是否自动对焦
              autofocus: true,
              // 是否是密码
              obscureText: false,
              // 文本对齐方式
              textAlign: TextAlign.center,
              // 输入文本的样式
              style: TextStyle(fontSize: 16.0,color: Colors.green),
              // 文本内容改变时回调
              onChanged: (text){
                print('文本内容改变时回调 $text');
              },
              // 提交时回调
              onSubmitted: (text){
                print('表单提交时回调$text');
              },
              enabled: true,
              // 添加装饰效果
              decoration: InputDecoration(
                fillColor: Colors.grey.shade200,
                filled: true,
                helperText: '用户名',
                // 左侧图标
                prefixIcon: Icon(Icons.person),
                // 右侧文本提示
                suffixText: '用户名'
              ),
            ),
          ),
        ),
      ),
    );
  }
}