import 'package:flutter/material.dart';

void main() {
  runApp(SimpleApp());
}

class SimpleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Hello",
      home: new _MyStatefulText(),
    );
  }
}

class _MyStatefulText extends StatefulWidget {
  _MyStatefulText({Key key}) : super(key: key);

  @override
  _MyTextState createState() {
    return new _MyTextState();
  }
}

class _MyTextState extends State<_MyStatefulText> {
  String tw = "HelloWorld";

  void _switchText() {
    setState(() {
      if (tw == "HelloWorld") {
        tw = "WorldHello";
      } else {
        tw = "HelloWorld";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Hello"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            Text(tw,
                textAlign: TextAlign.center,
                textDirection: TextDirection.ltr,
                style: TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
            MaterialButton(
              child: Text(
                "Switch",
                textDirection: TextDirection.ltr,
                textAlign: TextAlign.center,
                style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
              ),
              textColor: Color.fromARGB(255, 0, 0, 0),
              color: Color.fromARGB(255, 123, 104, 238),
              onPressed: _switchText,
            )
          ],
        ),
      ),
    );
  }
}
