import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: new AppBar(title: new Text("Flutter")),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new ClipRect(
              child: new ListTile(
                leading: new FlutterLogo(),
                title: new Text("Flutter"),
              ),
            ),
            new ListTile(
              title: new Text("我的收藏"),
              leading: new Icon(Icons.star),
            ),
            new ListTile(
              title: new Text("其他"),
              subtitle: new ListView(
                children: <Widget>[
                  new ListTile(
                      leading: new FlutterLogo(), title: new Text("版本：1.0")),
                  new ListTile(
                      leading: new FlutterLogo(), title: new Text("评价")),
                  new ListTile(
                      leading: new FlutterLogo(), title: new Text("关于我们"))
                ],
              ),
            )
          ],
        ),
      ),

    ),
  ));
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new HomePage();
  }
}
