import 'package:flutterview/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

///
///退出整个app的方法
/// async {
///   await SystemNavigator.pop();
/// }
///
/// 一定要引入依赖 import 'package:flutter/services.dart';
///
class ExitAppFulWidget extends CommonFulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ExitAppFulState();
  }
}

class _ExitAppFulState extends CommonFulWidgetState<ExitAppFulWidget> {
  @override
  getBody() {
    return GestureDetector(
      onTap: () async {
        await SystemNavigator.pop();
      },
      child: Container(
        color: Colors.yellow,
        alignment: Alignment.center,
        child: Text('点击这个按钮退出app'),
      ),
    );
  }
}
