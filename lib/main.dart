import 'package:flutter/material.dart';
import 'package:shimmer_loading/LoadingPageOne.dart';
import 'package:shimmer_loading/LoadingPageTwo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter - Shimmer Loading',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Applications - V.1'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: LoadingPageOne(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      new MyHomePageTwo(title: 'Flutter Applications - V.2')));
        },
        tooltip: 'Another',
        child: Icon(Icons.add),
      ),
    );
  }
}

class MyHomePageTwo extends StatefulWidget {
  MyHomePageTwo({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageTwoState createState() => _MyHomePageTwoState();
}

class _MyHomePageTwoState extends State<MyHomePageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: LoadingPageTwo(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        tooltip: 'Another',
        child: Icon(Icons.add),
      ),
    );
  }
}
