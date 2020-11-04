import 'package:flutter/material.dart';

class TestPage extends StatefulWidget {
  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("test"),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          
          BottomNavigationBarItem(icon: Icon(Icons.add), title: Text("")),
          BottomNavigationBarItem(icon: Icon(Icons.add), title: Text("")),
          BottomNavigationBarItem(icon: Icon(Icons.add), title: Text(""))
        ],
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
