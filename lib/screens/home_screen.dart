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
        _materialButton(),
        _raisedButton(),
      ],
    );
  }

  Widget _materialButton() {
    return Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Color(0xFF042240),
      child: MaterialButton(
        minWidth: Get.width / 2,
        onPressed: () => Get.to(SymptomChecker()),
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Text("Let's Check Those Symptoms",
              textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 20)),
        ),
      ),
    );
  }

  Widget _raisedButton() {
    return ButtonTheme(
      minWidth: Get.width / 2,
      buttonColor: Color(0xFF042240),
      textTheme: ButtonTextTheme.primary,
      child: RaisedButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        elevation: 5.0,
        padding: EdgeInsets.symmetric(vertical: 24, horizontal: 32),
        onPressed: () => Get.to(SymptomChecker()),
        child: Text("Let's Check Those Symptoms", style: TextStyle(fontSize: 20)),
      ),
    );
  }
}
