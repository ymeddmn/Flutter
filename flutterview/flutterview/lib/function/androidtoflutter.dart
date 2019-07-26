import 'package:flutter/material.dart';
import 'package:flutterview/common.dart';

class AndroidToFlutterFulWidget extends CommonFulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AndroidToFlutterFulState();
  }
}

class _AndroidToFlutterFulState
    extends CommonFulWidgetState<AndroidToFlutterFulWidget> {
  String ztext = '点击操作会使得原生页面返回一个值给展示';

  @override
  getBody() {
    return Column(
      children: <Widget>[
        GestureDetector(
          onTap: () {},
          child: Container(
            color: Colors.yellow,
            width: 100,
            height: 100,
            child: Text('点击会启动一个android的页面'),
          ),
        ),
        Text(ztext)
      ],
    );
  }
}
