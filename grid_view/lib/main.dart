import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  void initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new GridView.builder(
            gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, ),
            itemCount: 4,
            scrollDirection: Axis.vertical,
            itemBuilder: (BuildContext context, int index) {
              return new Container(
                child: new GridTile(
                  child: new Center(
                      child: new CustomGrid()
                  ),
                ),
              );
            }
        )
      ),
    );
  }
}

class CustomGrid extends StatelessWidget{

  Color getTextColor(int index){
    return index % 2 == 0 ? Colors.white : Colors.black;
  }

  Color getTileColor(int index){
    return index % 2 == 0 ? Colors.black : Colors.white;
  }

  @override
  Widget build(BuildContext context) {
    return new GridView.builder(
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, ),
        itemCount: 4,
        scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext context, int index) {
          return new Container(
            color: getTileColor(index),
            child: new GridTile(
              child: new Center(child: new Text(index.toString(), style: new TextStyle(color: getTextColor(index)),)),
            ),
          );
        }
    );
  }
}


