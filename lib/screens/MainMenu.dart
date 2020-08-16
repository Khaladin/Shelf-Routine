import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Current Routine')
        ),
        body: Column(
            children: <Widget>[
              RaisedButton(
                child: Text('Current Routine'),
                onPressed: () {
                  Navigator.pushNamed(context, '/routine/current');
                },
              ),
              RaisedButton(
                  child: Text('New Routine'),
                  onPressed: () {
                    Navigator.pushNamed(context, '/routine/new');
                  }
              ),
              RaisedButton(
                  child: Text('New Product'),
                  onPressed: () {
                    Navigator.pushNamed(context, '/product/new');
                  }
              ),
              RaisedButton(
                  child: Text('New Routine'),
                  onPressed: () {
                    Navigator.pushNamed(context, '/product/all');
                  }
              ),
            ]
        )
    );
    throw UnimplementedError();
  }
}