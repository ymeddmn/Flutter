import 'package:flutterview/common.dart';
import 'package:flutter/material.dart';

class PaddingFulWidget extends CommonFulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PaddingFulState();
  }
}

class _PaddingFulState extends CommonFulWidgetState<PaddingFulWidget> {
  @override
  getBody() {
    return Container(
      /**
       * 里面的红色控件被Padding包裹后，就会有个向外的间距，相当于android的margin，
       * 如果不用padding包裹红色Container就会填充满黄色控件
       */
      width: 300,
      height: 300,
      color: Colors.yellow,
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Container(
          color: Colors.red,
        ),
      ),
    );
  }
}
