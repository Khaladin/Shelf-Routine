import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Current Routine')
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
                RaisedButton(
                  child: Text('My Shelfie'),
                  onPressed: () {
                    Navigator.pushNamed(context, '/shelfies');
                  },
                ),
                RaisedButton(
                    child: Text('New Routine'),
                    onPressed: () {
                      Navigator.pushNamed(context, '/skin-tracking');
                    }
                ),
              ]
          )

        )
    );
    throw UnimplementedError();
  }
}