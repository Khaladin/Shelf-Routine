import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LandingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Landing Screen"),
      ),
        body: Column(
            children: <Widget>[
              Center(
                child: Text('Hello Beautiful')
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/main-menu');
                },
                child: Text('Main menu')
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/about');
                },
                child: Text('About'),
              ),
            ]
        )
    );
  }
}