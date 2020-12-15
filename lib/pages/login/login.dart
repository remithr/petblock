import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //double swidth = MediaQuery.of(context).size.width;
    //double sheight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 18.0, right: 18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
              _addTextField('Email Address'),
              buildTextField('Enter Email'),
              _addTextField('Password'),
              buildTextField('Enter Password'),
              _addTextField('Invalid Password'),
              _addTextField('ForgotPassword')
            ],
          ),
        ),
      ),
    );
  }

  TextField buildTextField(val) {
    return TextField(
      autocorrect: true,
      decoration: InputDecoration(
        hintText: val,
        hintStyle: TextStyle(color: Colors.grey),
        filled: true,
        fillColor: Colors.white,
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

  _addTextField(val) {
    if (val == 'Invalid Password') {
      return Text(
        val,
        style: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.normal,
        ),
      );
    }
    else {
      return Text(
        val,
        style: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.normal,
        ),
      );
    }
  }
}
