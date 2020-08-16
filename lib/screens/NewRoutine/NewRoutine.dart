import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewRoutine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('New Routine')
        ),
        body: Column(
            children: <Widget>[
              Text('Create a new Routine'),
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