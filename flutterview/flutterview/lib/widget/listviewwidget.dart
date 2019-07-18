import 'package:flutterview/common.dart';
import 'package:flutter/material.dart';

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
