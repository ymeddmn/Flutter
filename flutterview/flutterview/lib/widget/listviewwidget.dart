import 'package:flutterview/common.dart';
import 'package:flutter/material.dart';
//静态列表
class ListViewWidget1 extends CommonFulWidget {
  @override
  State<StatefulWidget> createState() {
    return ListViewState();
  }
}

class ListViewState extends CommonFulWidgetState<ListViewWidget1> {
  @override
  getBody() {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        ListTile(
          title: Text("雪花"),
          subtitle: Text("这是一个雪花"),
          leading: Icon(Icons.ac_unit),
        ),
        ListTile(
          title: Text("闹钟"),
          subtitle: Text("这是一个闹钟"),
          leading: Icon(Icons.access_alarm),
        ),
        ListTile(
          title: Text("人"),
          subtitle: Text("这是一个人"),
          leading: Icon(Icons.accessibility),
        )
      ],
    );
  }
}
//静态列表

//水平列表

class HorizonalListWidget extends CommonFulWidget{
  @override
  State<StatefulWidget> createState() {
    return HorizonalListState();
  }
}

class HorizonalListState extends CommonFulWidgetState<HorizonalListWidget>{
  @override
  getBody() {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Container(width: 100,height: 200,color: Colors.blue,),
        Container(width: 100,height: 200,color: Colors.yellow,),
        Container(width: 100,height: 200,color: Colors.green,),
        Container(width: 100,height: 200,color: Colors.red,),
        Container(width: 100,height: 200,color: Colors.pink,),
        Container(width: 100,height: 200,color: Colors.blue,),
        Container(width: 100,height: 200,color: Colors.black26,),
        Container(width: 100,height: 200,color: Colors.green,),
      ],
    );
  }
}