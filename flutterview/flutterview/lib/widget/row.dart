import 'package:flutterview/common.dart';
import 'package:flutter/material.dart';

class RowFulWidget extends CommonFulWidget {
  @override
  State<StatefulWidget> createState() {
    return _RowFulState();
  }
}

class _RowFulState extends CommonFulWidgetState<RowFulWidget> {
  @override
  getBody() {
    return ListView(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RoundShap(
              rtext: 'center',
            ),
            RoundShap(),
            RoundShap(),
            RoundShap()
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            RoundShap(
              rtext: 'end',
            ),
            RoundShap(),
            RoundShap(),
            RoundShap()
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            RoundShap(
              rtext: 'spaceAround',
            ),
            RoundShap(),
            RoundShap(),
            RoundShap()
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            RoundShap(
              rtext: 'spaceBetween',
            ),
            RoundShap(),
            RoundShap(),
            RoundShap()
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            RoundShap(
              rtext: 'spaceEvenly',
            ),
            RoundShap(),
            RoundShap(),
            RoundShap()
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            RoundShap(
              rtext: 'start',
            ),
            RoundShap(),
            RoundShap(),
            RoundShap()
          ],
        ),
      ],
    );
  }
}

class RoundShap extends StatelessWidget {
  Color rcolor = Colors.red;
  String rtext = '空';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(5, 20, 5, 20),
      child: Container(
        width: 50,
        height: 50,
        color: rcolor,
        child: Text(
          'ks',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  RoundShap({String rtext,Color rcolor, });
}
