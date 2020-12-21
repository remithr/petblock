import 'package:flutter/material.dart';
import 'package:petblock/styles/style.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          verticalSpace40,
          Text(
            'Forgot Password?',
            style: fgText,
            textAlign: TextAlign.center,
          ),
          verticalSpace20,
          Center(
            child: Container(
              width: 150,
              height: 132,
              decoration: new BoxDecoration(
                shape: BoxShape.rectangle,
                //border: Border.all(color: Colors.black),
                image: DecorationImage(
                  image:
                      new ExactAssetImage('assets/images/forgot-password.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          verticalSpace20,
          Text(
            'Enter the email address',
            style: fgemailText,
            textAlign: TextAlign.center,
          ),
          verticalSpace10,
          Text(
            'associated with your account.',
            style: fgemailText,
            textAlign: TextAlign.center,
          ),
          verticalSpace20,
          Text(
            'We will email you a link to reset',
            style: fglinkText,
            textAlign: TextAlign.center,
          ),
          Text(
            'your password',
            style: fglinkText,
            textAlign: TextAlign.center,
          ),
          verticalSpace20,
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: _addTextLable('Email Address'),
          ),
          verticalSpace10,
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: buildTextField('Email Address'),
          ),
          verticalSpace60,
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: SizedBox(
              height: 54,
              child: RaisedButton(
                onPressed: () {
                  //Navigator.of(context).pushReplacementNamed('create-user');
                },
                child: Text(
                  "Send",
                  style: TextStyle(fontSize: 18),
                ),
                color: primaryColor,
                textColor: twhite,
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(10),
                ),
              ),
            ),
          ),
        ],
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
    return Text(
      val,
      textAlign: TextAlign.left,
      style: lgText,
    );
  }
}
