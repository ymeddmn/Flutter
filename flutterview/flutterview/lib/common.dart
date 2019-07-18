import 'package:flutter/material.dart';

class CommonLessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: _getRealAppbar(),
        body: Center(
          child: getBody(),
        ),
      ),
    );
  }

  getBody() {
    return Container(
      width: 300,
      height: 300,
      alignment: Alignment.center,
      color: Colors.yellow,
      child: Text("这是默认的布局，请重写getBody方法"),
    );
  }

  _getRealAppbar() {
    return getAppbar();
  }

  getAppbar() {
    return AppBar(
      title: Text('控件的用法'),
    );
  }
}

abstract class CommonFulWidget extends StatefulWidget {}

abstract class CommonFulWidgetState<T extends StatefulWidget> extends State<T> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: _getRealAppbar(),
        body: Center(
          child: getBody(),
        ),
      ),
    );
  }

  getBody() {
    return Container(
      width: 300,
      height: 300,
      alignment: Alignment.center,
      color: Colors.yellow,
      child: Text("这是默认的布局，请重写getBody方法"),
    );
  }

  _getRealAppbar() {
    return getAppbar();
  }

  getAppbar() {
    return AppBar(
      title: Text(getTitle()),
      leading: IconButton(
        icon: Icon(Icons.arrow_back_ios),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
    );
  }

  String getTitle() {
    return '';
  }
}
