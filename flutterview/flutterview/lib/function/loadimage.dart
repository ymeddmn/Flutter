import 'package:flutterview/common.dart';
import 'package:flutter/material.dart';

class LoadImageWidget extends CommonFulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoadImageState();
  }
}

class LoadImageState extends CommonFulWidgetState<LoadImageWidget> {
  @override
  getBody() {
    return Container(
      //Container如果摄者了宽高会对里面的Image加载的网络大小图片有影响，所以这里不摄者
      color: Colors.red,
      child: Image.network('https://www.baidu.com/img/baidu_resultlogo@2.png',
        alignment: Alignment.bottomRight,//图片的位置
        color: Colors.yellow,//如果单独设置了这个，那么图片就变成白色的了（需要配合colorBlendMode使用）
        colorBlendMode: BlendMode.darken,//配合colors属性展示出不同的效果
        fit: BoxFit.fill,//1、BoxFit.cover全屏显示会有拉伸  2、BoxFit.fill 充满屏幕 3、BoxFit.contain 原图显示
        repeat: ImageRepeat.repeatX,//平铺
      ),
    );
  }

  @override
  String getTitle() {
    return "加载网络图片";
  }
}
