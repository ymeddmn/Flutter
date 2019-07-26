import 'package:flutter/material.dart';
import 'package:flutterview/widget/Text.dart';
import 'package:flutterview/widget/containerwidget.dart';
import 'package:flutterview/function/loadimage.dart';
import 'package:flutterview/widget/listviewwidget.dart';
import 'package:flutterview/function/clickevent.dart';
import 'package:flutter/services.dart';
import 'package:flutterview/function/exitapp.dart';
import 'package:flutterview/widget/expanded.dart';
import 'package:flutterview/widget/padding.dart';
import 'package:flutterview/widget/row.dart';
import 'package:flutterview/function/fluttertoandroid.dart';


void main() => runApp(Material(
      child: MaterialApp(
        title: "列表",
        routes: <String, WidgetBuilder>{
          //控件类
          'container': (_) => new ContainerWidget(),
          'text': (_) => new TextWidget(),
          "listview1": (_) => new ListViewWidget1(),
          'horizonalList': (_) => HorizonalListWidget(),
          'expanded':(_)=>ExpandedFulWidget(),
          'expandedflex':(_)=>ExpandedFlexFulWidget(),
          'padding':(_)=>PaddingFulWidget(),
          'row':(_)=>RowFulWidget(),
          //控件类

          //功能类
          'loadImage': (_) => LoadImageWidget(),
          'clickevent': (_) => ClickEventFulWidget(),
          'exitapp': (_) => ExitAppFulWidget(),
          'fluttertoandroid': (_) => FluttertoAndroidFulWidget(),
          //功能类
        },
        theme: new ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyApp(),
      ), //必须用Material包裹
    ));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var datas = new List<Page>();

  void _retrieveData() {
    datas.add(Page("container", "容器container的用法 f-1"));
    datas.add(Page("text", "text控件的用法 f-2"));
    datas.add(Page("loadImage", "flutter加载网络图片的的方法 f-3"));
    datas.add(Page("listview1", "listview通过children展示静态列表 f-4"));
    datas.add(Page("horizonalList", "水平的listview f-5"));
    datas.add(Page("clickevent", "Container的点击事件和toast f-6"));
    datas.add(Page("exitapp", "退出这个app的方法 f-7"));
    datas.add(Page("expanded", "Expanded的使用方法 f-8"));
    datas.add(Page("expandedflex", "Column中嵌套多个Expanded，实现效果等分 f-9"));
    datas.add(Page("padding", "Padding控件，设置间距 f-10"));
    datas.add(Page("row", "row控件 f-11"));
    datas.add(Page("fluttertoandroid", "flutter调用安卓 f-12"));
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    _retrieveData();
  }

  @override
  Widget build(BuildContext context) {
    Widget divider1 = Divider(color: Colors.blue);
    Widget divider2 = Divider(color: Colors.green);
    return Scaffold(
      appBar: AppBar(
        title: Text('控件的用法'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () async {
            await SystemNavigator.pop();
          },
        ),
      ),
      body: ListView.separated(
        itemCount: datas.length,
        //列表项构造器
        itemBuilder: (BuildContext context, int index) {
//          return Container(
//              height: 30,
//              alignment: Alignment.center,
//              child: GestureDetector(
//                child: Text(datas[index].text),
//                onTap: () {
//                  Navigator.of(context).pushNamed(datas[index].path);
//                },
//              ));
          return ListTile(
            title: Text(datas[index].text),

            onTap: () {
              Navigator.of(context).pushNamed(datas[index].path);
            },
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return index % 2 == 0 ? divider1 : divider2;
        },
      ),
    );
  }
}

class Page {
  var path;
  var text;

  Page(this.path, this.text);
}
