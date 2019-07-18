import 'package:flutter/material.dart';
import 'package:flutterview/widget/Text.dart';
import 'package:flutterview/widget/containerwidget.dart';
import 'package:flutterview/function/loadimage.dart';
import 'package:flutterview/widget/listviewwidget.dart';

void main() =>
    runApp(Material(
      child: MaterialApp(
        title: "列表",
        routes: <String, WidgetBuilder>{
      //控件类
      'container': (_) => new ContainerWidget(),
      'text': (BuildContext context) => new TextWidget(),
      "listview1":(_)=>new ListViewWidget1(),
      //控件类


      //功能类
      'loadImage': (_) => LoadImageWidget(),
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
    datas.add(Page("container", "容器container的用法"));
    datas.add(Page("text", "text控件的用法"));
    datas.add(Page("loadImage", "flutter加载网络图片的的方法"));
    datas.add(Page("listview1", "listview通过children展示静态列表"));
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
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: ListView.separated(

        itemCount: datas.length,
        //列表项构造器
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(
              datas[index].text,
              textAlign: TextAlign.center,
            ),
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
