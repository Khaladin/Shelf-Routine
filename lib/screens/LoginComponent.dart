import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_world/components/custom_text_field.dart';

class LoginRegister extends StatefulWidget {
  @override
  _LoginRegisterState createState() => _LoginRegisterState();
}

class _LoginRegisterState extends State<LoginRegister> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  final GlobalKey<FormState> _loginFormKey = GlobalKey<FormState>();
  PersistentBottomSheetController _sheetController;
  String _email;
  String _password;
  String _displayName;
  bool _loading = false;
  bool _autoValidate = false;
  String errorMsg = "";

  void initState() {
    super.initState();
  }

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
                      key: _loginFormKey,
                      autovalidate: _autoValidate,
                      child: Column(
                          children: <Widget>[
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
//                            filledButton('LOGIN', Colors.white, Theme.of(context).primaryColor, Theme.of(context).primaryColor, Colors.white, _validateLoginInput),
//                            filledButton('REGISTER', Colors.white, Theme.of(context).primaryColor, Theme.of(context).primaryColor, Colors.white, _validateRegisterInput)
                          ]
                      )
                  )

                ])));
  }
}