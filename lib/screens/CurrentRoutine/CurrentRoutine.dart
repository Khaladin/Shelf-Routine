import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CurrentRoutine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Current Routine')
      ),
      body: Column(
        children: <Widget>[
          Text('This is your Current Routine'),
          RaisedButton(
            child: Text('Main menu'),
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