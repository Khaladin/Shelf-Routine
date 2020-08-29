import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_world/components/custom_text_field.dart';
import 'package:hello_world/components/filled_button.dart';


class LandingScreen extends StatefulWidget {
  @override
  _LandingScreen createState() => _LandingScreen();
}

class _LandingScreen extends State<LandingScreen> {
  final GlobalKey<FormState> _loginKey = GlobalKey<FormState>();
  String _email;
  String _password;
  String _displayName;
  bool _loading = false;
  bool _autoValidate = false;
  String errorMsg = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Landing Page'),
        ),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/main-menu');
                  },
                  child: Text('Main Menu')),
              RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/about');
                },
                child: Text('About'),
              ),
              Form(
                  key: _loginKey,
                  autovalidate: _autoValidate,
                  child: Column(children: <Widget>[
                    CustomTextField(
                      onSaved: (input) {
                        print(input);
                        _email = input;
                      },
                      validator: (input) => input.isEmpty ? '*Required' : null,
                      icon: Icon(Icons.email),
                      hint: 'EMAIL',
                    ),
                    CustomTextField(
                      onSaved: (input) {
                        _password = input;
                      },
                      validator: (input) => input.isEmpty ? '*Required' : null,
                      icon: Icon(Icons.lock),
                      hint: 'PASSWORD',
                    ),
                    FilledButton(
                        text: 'LOGIN',
                        splashColor: Colors.white,
                        highlightColor: Theme.of(context).primaryColor,
                        fillColor: Theme.of(context).primaryColor,
                        textColor: Colors.white,
                        buttonFunction: () => _validateLoginInput(),
                    ),
                    FilledButton(
                        text: 'REGISTER',
                        splashColor: Colors.white,
                        highlightColor: Theme.of(context).primaryColor,
                        fillColor: Theme.of(context).primaryColor,
                        textColor: Colors.white,
                        buttonFunction: () => _validateRegisterInput(),
                    )
                  ]))
            ])));
  }

  Widget filledButton(String text, Color splashColor, Color highlightColor,
      Color fillColor, Color textColor, void function()) {
    return RaisedButton(
        highlightElevation: 0.0,
        splashColor: splashColor,
        highlightColor: highlightColor,
        elevation: 0.0,
        color: fillColor,
        shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(30.0)),
        child: Text(text,
            style: TextStyle(
                fontWeight: FontWeight.bold, color: textColor, fontSize: 20)),
        onPressed: () {
          function();
        }
    );
  }

  void _validateLoginInput() async {
    final FormState form = _loginKey.currentState;
    form.save();
    print(_email);
  }

  void _validateRegisterInput() async {
    final FormState form = _loginKey.currentState;
    form.save();
    print(_password);
  }
}
