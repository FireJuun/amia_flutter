import 'package:amia_flutter/screens/screens.dart';
import 'package:amia_flutter/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController _controller;
  @override
  void initState() {
    super.initState();
    _controller = PageController();
  }

  @override
  void dispose() {
    _controller.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello World'),
      ),
      body: PageView(
        controller: _controller,
        children: <Widget>[
          HelloWorldScreen(),
          HelloWorldScreen(),
          HelloWorldScreen(),
          HelloWorldScreen(),
          HelloWorldScreen(),
          HelloWorldScreen(),
        ],
      ),
    );
  }
}

class HelloWorldScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        HelloFromFirebase(),
        Material(
          elevation: 5.0,
          borderRadius: BorderRadius.circular(30.0),
          color: Color(0xFF1A237E),
          child: MaterialButton(
            minWidth: MediaQuery.of(context).size.width / 2,
            onPressed: () => Get.to(SymptomChecker()),
            child:
                Text("Let's Check Those Symptoms", textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
          ),
        ),
      ],
    );
  }
}
