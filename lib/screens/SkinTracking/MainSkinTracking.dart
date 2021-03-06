import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainSkinTracking extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Skin Tracking')
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text('My Shelfie'),
                onPressed: () {
                  Navigator.pushNamed(context, '/shelfies');
                },
              ),
              RaisedButton(
                  child: Text('Skin Tracking'),
                  onPressed: () {
                    Navigator.pushNamed(context, '/skin-tracking');
                  }
              ),
            ]
        )
    );
    throw UnimplementedError();
  }
}