import 'package:flutter/material.dart';
import 'package:petblock/styles/style.dart';

class EmailVerifyScreen extends StatefulWidget {
  @override
  _EmailVerifyScreenState createState() => _EmailVerifyScreenState();
}

class _EmailVerifyScreenState extends State<EmailVerifyScreen> {
  FocusNode myFocusNode;
  FocusNode myFocusNode1;
  FocusNode myFocusNode2;
  FocusNode myFocusNode3;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    myFocusNode = FocusNode();
    myFocusNode1 = FocusNode();
    myFocusNode2 = FocusNode();
    myFocusNode3 = FocusNode();

    //myFocusNode.requestFocus();
  }

  @override
  void dispose() {
    // Clean up the focus node when the Form is disposed.
    myFocusNode.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            verticalSpace60,
            Text(
              'Email Verification',
              style: pTitle,
              textAlign: TextAlign.start,
            ),
            verticalSpace20,
            Text(
              'Please enter 6 digit otp sent on your mobile number XXXXXXXX16',
              style: tdesc,
              textAlign: TextAlign.start,
            ),
            verticalSpace40,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                buildTextField('otp'),
                buildTextField1('otp'),
                buildTextField2('otp'),
                buildTextField3('otp'),
              ],
            ),
            verticalSpace40,
            Text(
              '2:59',
              style: TextStyle(
                  color: primaryColor,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w700),
              textAlign: TextAlign.center,
            ),
            verticalSpace20,
            SizedBox(
              height: 54,
              child: RaisedButton(
                onPressed: () {
                  //Navigator.of(context).pushReplacementNamed('create-user');
                },
                child: Text(
                  "Resend OTP",
                  style: TextStyle(fontSize: 18),
                ),
                padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                //color: primaryColor,
                textColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(10),
                ),
              ),
            ),
            verticalSpace20,
            SizedBox(
              height: 54,
              child: RaisedButton(
                onPressed: () {
                  //Navigator.of(context).pushReplacementNamed('create-user');
                },
                child: Text(
                  "Continue",
                  style: TextStyle(fontSize: 18),
                ),
                color: primaryColor,
                textColor: twhite,
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(10),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  buildTextField(val) {
    return SizedBox(
      width: 50,
      child: TextField(
        obscureText: true,
        autocorrect: true,
        focusNode: myFocusNode,
        onChanged: (val) {
          if (val.length > 0) {
            myFocusNode1.requestFocus();
          }
        },
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
      ),
    );
  }

  buildTextField1(val) {
    return SizedBox(
      width: 50,
      child: TextField(
        obscureText: true,
        autocorrect: true,
        onChanged: (val) {
          if (val.length == 0) {
            myFocusNode.requestFocus();
          } else {
            myFocusNode2.requestFocus();
          }
          //myFocusNode2.requestFocus();
        },
        focusNode: myFocusNode1,
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
      ),
    );
  }

  buildTextField2(val) {
    return SizedBox(
      width: 50,
      child: TextField(
        obscureText: true,
        autocorrect: true,
        focusNode: myFocusNode2,
        onChanged: (val) {
          if (val.length == 0) {
            myFocusNode1.requestFocus();
          } else {
            myFocusNode3.requestFocus();
          }
        },
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
      ),
    );
  }

  buildTextField3(val) {
    return SizedBox(
      width: 50,
      child: TextField(
        obscureText: true,
        autocorrect: true,
        focusNode: myFocusNode3,
        onChanged: (val) {
          print('val $val');
          print(val.length);
          if (val.length == 0) {
            myFocusNode2.requestFocus();
          }
        },
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
      ),
    );
  }
}
