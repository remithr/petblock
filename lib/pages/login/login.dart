import 'package:flutter/material.dart';
import 'package:petblock/styles/style.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    //double swidth = MediaQuery.of(context).size.width;
    //double sheight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: const EdgeInsets.only(left: 18.0, right: 18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                //crossAxisAlignment: CrossAxisAlignment.center,
                //mainAxisAlignment: MainAxisAlignment.center,
                //children: <Widget>[
                child: Padding(
                  padding: const EdgeInsets.only(top: 18.0),
                  child: Image.asset(
                    "assets/icons/logo.png",
                  ),
                ),
                //),
                //],
              ),
              verticalSpace20,
              _addTextLable('Email Address'),
              verticalSpace10,
              buildTextField('Enter Email'),
              verticalSpace20,
              _addTextLable('Password'),
              verticalSpace10,
              buildTextField('Enter Password'),
              verticalSpace20,
              _addTextLable('Invalid Password'),
              verticalSpace10,
              _addTextLable('ForgotPassword'),
              verticalSpace20,
              SizedBox(
                height: 54,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed('create-user');
                  },
                  child: Text(
                    "Sign-In",
                    style: TextStyle(fontSize: 18),
                  ),
                  color: primaryColor,
                  textColor: twhite,
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10),
                  ),
                ),
              ),
              verticalSpace20,
              _buildDivider(),
              verticalSpace20,
              SizedBox(
                height: 54,
                child: RaisedButton(
                  onPressed: () {
                    var args = {'facebook': true};
                    Navigator.of(context).pushReplacementNamed('create-user' , arguments: args);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Image.asset(
                          "assets/icons/facebook.png",
                        ),
                      ),
                      Text("Sign In with Facebook",
                          style: TextStyle(fontSize: 18)),
                    ],
                  ),
                  color: fbColor,
                  textColor: twhite,
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10),
                  ),
                ),
              ),
              verticalSpace20,
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Don't have account? "),
                    Text(
                      'Sign Up',
                      style: TextStyle(
                          color: primaryColor, fontWeight: FontWeight.bold),
                    ),
                  ]),
            ],
          ),
        ),
      ),
    );
  }

  TextField buildTextField(val) {
    return TextField(
      obscureText: val == "Enter Password" ? true : false,
      autocorrect: true,
      decoration: InputDecoration(
        hintText: val,
        hintStyle: TextStyle(color: Colors.grey),
        filled: true,
        fillColor: twhite,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12.0)),
          borderSide: BorderSide(color: Color(0xff39C7CE), width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          borderSide: BorderSide(
            color: Color(0xff39C7CE),
          ),
        ),
      ),
    );
  }

  _addTextLable(val) {
    if (val == 'Invalid Password') {
      return Text(
        val,
        textAlign: TextAlign.right,
        style: TextStyle(
            fontSize: 16.0, fontWeight: FontWeight.normal, color: Colors.red),
      );
    }
    if (val == 'ForgotPassword') {
      return Text(
        val,
        textAlign: TextAlign.right,
        style: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.normal,
          decoration: TextDecoration.underline,
        ),
      );
    } else {
      return Text(
        val,
        textAlign: TextAlign.left,
        style: lgText,
      );
    }
  }

  _buildDivider() {
    return Row(children: <Widget>[
      Expanded(
        child: Padding(
          padding: const EdgeInsets.only(left: 18.0, right: 18.0),
          child: Divider(color: Colors.black),
        ),
      ),
      Text("OR SIGNUP WITH"),
      Expanded(
        child: Padding(
          padding: const EdgeInsets.only(left: 18.0, right: 18.0),
          child: Divider(color: Colors.black),
        ),
      ),
    ]);
  }
}
