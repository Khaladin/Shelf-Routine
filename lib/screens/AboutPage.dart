import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About Page")
      ),
      body: Column(
        children: <Widget>[
          Text('This is the '),
          RaisedButton(
              child: Text('Main Menu'),
              onPressed: () {
                Navigator.pop(context);
              }
          ),

        ]
      )
    );
    throw UnimplementedError();
  }
}