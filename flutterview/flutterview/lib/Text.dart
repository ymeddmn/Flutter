import 'package:flutter/material.dart';
import 'common.dart';

class TextWidget extends CommonFulWidget {
  @override
  State<StatefulWidget> createState() {
    return TextState();
  }
}

class TextState extends CommonFulWidgetState<TextWidget> {

  @override
  getBody() {
    return Container(
      width: 300,
      height: 300,
      color: Colors.red,
      alignment: Alignment.center,
      //内部元素居中
      transform: Matrix4.rotationX(0.3),
      child: Text(
        "哈哈哈",
        textDirection: TextDirection.ltr,
        style: TextStyle(
            color: Colors.yellow, fontSize: 40, fontStyle: FontStyle.italic),
        textAlign: TextAlign.center, //再父控件水平方向居中
      ),
    );
  }
}
