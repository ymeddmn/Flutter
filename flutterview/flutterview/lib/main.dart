import 'package:flutter/material.dart';
import 'Text.dart';
import 'containerwidget.dart';

void main() => runApp(Material(
      child: MaterialApp(
        title: "列表",
        routes: <String, WidgetBuilder>{
          'container': (_) => new ContainerWidget(),
          'text': (BuildContext context) => new TextWidget()
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
