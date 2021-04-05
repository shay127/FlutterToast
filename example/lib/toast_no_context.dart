import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastNoContext extends StatelessWidget {
  void showHebrewToast() {
    Fluttertoast.showToast(
      msg:
          "זאת הודעה בעברית. וזה עוד משפט. שלום. שלום. שלום. שלום. שלום. שלום. תגידו מה נשמע? זה מוצמד לימין?!",
      toastLength: Toast.LENGTH_LONG,
      fontSize: 18.0,
      textAlign: "right",
    );
  }

  void showEnglishToast() {
    Fluttertoast.showToast(
      msg:
          "how are you this morning? do you want to drink a coffee or write code? choose!",
      toastLength: Toast.LENGTH_LONG,
      fontSize: 18.0,
    );
  }

  void showLongToast() {
    Fluttertoast.showToast(
      msg: "This is Long Toast",
      toastLength: Toast.LENGTH_LONG,
      fontSize: 18.0,
    );
  }

  void showWebColoredToast() {
    Fluttertoast.showToast(
      msg: "This is Colored Toast with android duration of 5 Sec",
      toastLength: Toast.LENGTH_SHORT,
      webBgColor: "#e74c3c",
      textColor: Colors.black,
      timeInSecForIosWeb: 5,
    );
  }

  void showColoredToast() {
    Fluttertoast.showToast(
        msg: "This is Colored Toast with android duration of 5 Sec",
        toastLength: Toast.LENGTH_SHORT,
        backgroundColor: Colors.red,
        textColor: Colors.white);
  }

  void showShortToast() {
    Fluttertoast.showToast(
        msg: "This is Short Toast",
        toastLength: Toast.LENGTH_SHORT,
        timeInSecForIosWeb: 1);
  }

  void showTopShortToast() {
    Fluttertoast.showToast(
        msg: "This is Top Short Toast",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.TOP,
        timeInSecForIosWeb: 1);
  }

  void showCenterShortToast() {
    Fluttertoast.showToast(
        msg: "This is Center Short Toast",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1);
  }

  void cancelToast() {
    Fluttertoast.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Flutter Toast'),
        ),
        body: new Center(
          child: new Column(
            children: <Widget>[
              new Padding(
                padding: const EdgeInsets.all(10.0),
                child: new ElevatedButton(
                    child: new Text('Show Hebrew Toast'),
                    onPressed: showHebrewToast),
              ),
              new Padding(
                padding: const EdgeInsets.all(10.0),
                child: new ElevatedButton(
                    child: new Text('Show English Toast'),
                    onPressed: showEnglishToast),
              ),
              new Padding(
                padding: const EdgeInsets.all(10.0),
                child: new ElevatedButton(
                    child: new Text('Show Long Toast'),
                    onPressed: showLongToast),
              ),
              new Padding(
                padding: const EdgeInsets.all(10.0),
                child: new ElevatedButton(
                    child: new Text('Show Short Toast'),
                    onPressed: showShortToast),
              ),
              new Padding(
                padding: const EdgeInsets.all(10.0),
                child: new ElevatedButton(
                    child: new Text('Show Center Short Toast'),
                    onPressed: showCenterShortToast),
              ),
              new Padding(
                padding: const EdgeInsets.all(10.0),
                child: new ElevatedButton(
                    child: new Text('Show Top Short Toast'),
                    onPressed: showTopShortToast),
              ),
              new Padding(
                padding: const EdgeInsets.all(10.0),
                child: new ElevatedButton(
                    child: new Text('Show Colored Toast'),
                    onPressed: showColoredToast),
              ),
              new Padding(
                padding: const EdgeInsets.all(10.0),
                child: new ElevatedButton(
                    child: new Text('Show  Web Colored Toast'),
                    onPressed: showWebColoredToast),
              ),
              new Padding(
                padding: const EdgeInsets.all(10.0),
                child: new ElevatedButton(
                  child: new Text('Cancel Toasts'),
                  onPressed: cancelToast,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
