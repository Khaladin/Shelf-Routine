import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewProduct extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('New Product')
        ),
        body: Column(
            children: <Widget>[
              Text('Add a new Product to your shelf'),
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