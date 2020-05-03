import 'package:amia_flutter/screens/screens.dart';
import 'package:amia_flutter/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController _controller = PageController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SharedAppBar(title: 'Hello World!'),
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
        ActionButton(title: 'OK', whenPressed: () {}),
        ActionButton(
          title: "Let's Check Those Symptoms",
          whenPressed: () => Get.to(SymptomChecker()),
        ),
      ],
    );
  }
}
