import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AllProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Current Routine')
        ),
        body: Column(
            children: <Widget>[
              Text('View all of your products'),
              RaisedButton(
                  child: Text('Main Menu'),
                  onPressed: () {
                    Navigator.pop(context);
                  }
              )
            ]
        )
    );
    throw UnimplementedError();
  }
}