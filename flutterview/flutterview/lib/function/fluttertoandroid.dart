import 'package:flutterview/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:async';

/**
 * 集成步骤
 *  1、导入依赖services和async
 *  2、增加isEuropeUse方法
 *  3、
 */
class FluttertoAndroidFulWidget extends CommonFulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FluttertoAndroidFulState();
  }
}

class _FluttertoAndroidFulState
    extends CommonFulWidgetState<FluttertoAndroidFulWidget> {
  String ztext = '点击后会调用原生的方法这里的文字会发生改变';

  @override
  getBody() {
    return Center(
      child: GestureDetector(
        onTap: () {
          var user = isEuropeUser();
          user.then((s) {
            ztext = s;
            setState(() {});
            print(s);
          });
        },

        child: Container(
          child: Column(
            children: <Widget>[
              Text('点击调用原生的方法'),
              Text(ztext)
            ],
          ),
        ),)
      ,
    );
  }

  Future<String> isEuropeUser() async {
    // Native channel
    const platform = const MethodChannel("com.test/name"); //分析1
    String result = '';
    try {
      result = await platform.invokeMethod("isChinese"); //分析2
    } on PlatformException catch (e) {
      print(e.toString());
    }
    return result;
  }

}
