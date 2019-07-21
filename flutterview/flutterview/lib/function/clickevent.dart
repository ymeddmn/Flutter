import 'package:flutterview/common.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
//点击事件的实现

class ClickEventFulWidget extends CommonFulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ClickEventFulState();
  }
}

class _ClickEventFulState extends CommonFulWidgetState<ClickEventFulWidget> {
  @override
  getBody() {
    return Container(
      width: 300,
      height: 300,
      color: Colors.yellow,
      child: GestureDetector(
        child: Container(

          child: Text('container的点击事件效果'),
        ),
        onTap: () {
          print('哈哈哈哈');
          Fluttertoast.showToast(
              msg: "This is Center Short Toast",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.CENTER,
              timeInSecForIos: 1,
              backgroundColor: Colors.pink,
              textColor: Colors.black
          );
        },
      ),
    );
  }
}
