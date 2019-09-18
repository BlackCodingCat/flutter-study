import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget{
  Widget build(BuildContext context){
    return new MaterialApp(
      title: 'Align对齐布局组件',
      home: new Scaffold(
        appBar: AppBar(
          title: Text('Align对齐布局组件示例'),
        ),
        body: Center(
          child: Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
              color: Colors.red,
              border: Border.all(
                width: 10,
                color: Colors.green
              ),
              borderRadius: BorderRadius.circular(10.0)
            ),
            child: Stack(
              children: <Widget>[
                Align(
                  alignment: FractionalOffset(0.0, 0.0),
                  child: Image.asset('images/1.jpeg',width: 50,height: 50,),
                ),
                Align(
                  alignment: FractionalOffset(1.0, 0.0),
                  child: Image.asset('images/2.jpeg',width: 50,height: 50,),
                ),
                Align(
                  alignment: FractionalOffset.center,
                  child: Image.asset('images/3.jpeg',width: 100,height: 100,),
                ),
                Align(
                  alignment: FractionalOffset.bottomLeft,
                  child: Image.asset('images/2.jpeg',width: 50,height: 50,),
                ),
                Align(
                  alignment: FractionalOffset.bottomRight,
                  child: Image.asset('images/1.jpeg',width: 50,height: 50,),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}