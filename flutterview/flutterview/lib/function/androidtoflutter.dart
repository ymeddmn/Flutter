import 'package:flutter/material.dart';
import 'package:flutterview/common.dart';
import 'package:flutter/services.dart';

class AndroidToFlutterFulWidget extends CommonFulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AndroidToFlutterFulState();
  }
}

class _AndroidToFlutterFulState
    extends CommonFulWidgetState<AndroidToFlutterFulWidget> {
  String ztext = '点击操作会使得原生页面返回一个值给flutter展示';
  static const EventChannel eventChannel =
      const EventChannel('androidtoflutter');

  @override
  void initState() {
    super.initState();
    eventChannel.receiveBroadcastStream().listen((data) {
      print(data);
      setState(() {
        ztext = data;
      });
    });
  }

  @override
  getBody() {
    return Column(
      children: <Widget>[
        GestureDetector(
          onTap: () {},
          child: Container(
            alignment: Alignment.center,
            color: Colors.yellow,
            width: 200,
            height: 200,
            child: Text('进入页面原生页面就会给flutter传值，展示在下面红色框中'),
          ),
        ),
        Container(
          child: Text(ztext),
          width: 200,
          height: 200,
          color: Colors.red,
          alignment: Alignment.center,
        )
      ],
    );
  }

  String _batteryLevel = 'Unknown battery level.';
}
