import 'package:flutter/material.dart';
import 'package:petblock/styles/style.dart';

class PaypalPage extends StatefulWidget {
  @override
  _PaypalPageState createState() => _PaypalPageState();
}

class _PaypalPageState extends State<PaypalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text(
        //   'Paypal',
        //   style: TextStyle(
        //     color: Colors.black,
        //   ),

        // ),
        title: Image.asset(
          'assets/images/paypal.png',
        ),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            // color: unselected,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                10,
              ),
              // color: unselected,
            ),
            child: BackButton(
              color: Colors.black,
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        // title: Text(
        //   'Pet Care',
        //   style: TextStyle(
        //     color: Colors.black,
        //   ),
        // ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            verticalSpace20,
            Row(
              // crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              // mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.45,
                  child: Text(
                    'Amount Due',
                    style: paypalText,
                  ),
                ),
                verticalSpace05,
                Container(
                  width: MediaQuery.of(context).size.width * 0.45,
                  child: Text(
                    'USD \$50',
                    style: paypalText,
                  ),
                ),
              ],
            ),
            verticalSpace10,
            Row(
              // crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.45,
                  child: Text(
                    'Payment Amount',
                    style: paypalText,
                  ),
                ),
                verticalSpace05,
                Container(
                  width: MediaQuery.of(context).size.width * 0.45,
                  child: Text(
                    'USD \$50',
                    style: paypalText,
                  ),
                ),
              ],
            ),
            verticalSpace20,
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'You will be redirected to paypal.You can pay with your card or PayPal account.',
                style: paypalTerms,
              ),
            ),
            verticalSpace20,
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlineButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  color: primaryColor,
                  focusColor: primaryColor,
                  child: Text(
                    'Cancel',
                    style: paypalButtons,
                  ),
                ),
                horizontalSpace10,
                Container(
                  child: MaterialButton(
                    onPressed: () {
                      print('Pay Button pressed');
                    },
                    child: Text(
                      'Pay',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    color: primaryColor,
                    // height: 50,
                    // minWidth: MediaQuery.of(context).size.width,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
