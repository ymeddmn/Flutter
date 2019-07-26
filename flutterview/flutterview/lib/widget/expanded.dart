import 'package:flutterview/common.dart';
import 'package:flutter/material.dart';

/**
 *     Expanded控件必须配合Flex控件来用，通常的Flex控件包括Column、Row, Expanded会把父控件的主轴撑开从而填充屏幕
 *
 * */
class ExpandedFulWidget extends CommonFulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ExpandedFulState();
  }
}

class _ExpandedFulState extends CommonFulWidgetState<ExpandedFulWidget> {
  @override
  getBody() {
    return Column(
      children: <Widget>[
        /**
         * 顶部一个固定高度的Container，底部也是一个固定高度的Container，中间是Expanded
         * Expanded可以把中间的高度撑满，底部和顶部的Container仍然可以显示
         */
        Container(
          color: Colors.yellow,
          height: 30,
        ),
        Expanded(
            child: Container(
          color: Colors.red,
          child: Text('hahahahha'),
        )),
        Container(
          color: Colors.yellow,
          height: 30,
        ),
      ],
    );
  }
}

class ExpandedFlexFulWidget extends CommonFulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ExpandedFlexFulState();
  }
}

class _ExpandedFlexFulState
    extends CommonFulWidgetState<ExpandedFlexFulWidget> {
  @override
  getBody() {
    return Column(
      /**
       * 这个例子中，Column中放入了四个控件，他们的flex分别设置1，2，3，4
       * 根据不同的比例每个容器显示的大小都不一样，从而实现了Linearlayout的weight的效果
       */
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.yellow,
            width: 300,
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.green,
            width: 300,
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(
            color: Colors.blue,
            width: 300,
          ),
        ),
        Expanded(
          flex: 4,
          child: Container(
            color: Colors.pink,
            width: 300,
          ),
        )
      ],
    );
  }
}
