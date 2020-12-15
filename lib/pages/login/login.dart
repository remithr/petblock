import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double swidth = MediaQuery.of(context).size.width;
    double sheight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   title: Text(
        //     'Login',
        //   ),
        // ),
        // body: Center(
        //   child: Text(
        //     'Login Page',
        //   ),
        // ),
        body: Padding(
          padding: const EdgeInsets.only(top: 40.0),
          child: Container(
            width: swidth,
            height: sheight,
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/icons/logo.png',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
