import 'package:flutter/material.dart';
import 'package:petblock/styles/style.dart';

class PaymentSection extends StatelessWidget {
  const PaymentSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        verticalSpace10,
        Container(
          width: MediaQuery.of(context).size.width,
          height: 100,
          decoration: BoxDecoration(
            border: Border.all(color: tgrey, width: 2.0),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: ListTile(
              leading: Image.asset(
                'assets/icons/paypal.png',
              ),
              title: Text('Paypal Email'),
              subtitle: Text('paypal@user.com'),
              trailing: Icon(Icons.check_box),
            ),
          ),
        ),
        verticalSpace10,
        Container(
          width: MediaQuery.of(context).size.width,
          height: 100,
          decoration: BoxDecoration(
            border: Border.all(color: tgrey, width: 2.0),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: ListTile(
              leading: Image.asset(
                'assets/icons/scart.png',
              ),
              title: Text('Pay in person/ at store'),
              // subtitle: Text('paypal@user.com'),
              trailing: Icon(Icons.check_box),
            ),
          ),
        ),
      ],
    );
  }
}
