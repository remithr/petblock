import 'package:flutter/material.dart';
import 'package:petblock/styles/style.dart';



class CheckboxScreen extends StatefulWidget {
  @override
  _CheckboxScreenState createState() => _CheckboxScreenState();
}

class _CheckboxScreenState extends State<CheckboxScreen> {

  bool _valueCheck = false;
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
        title: Text(
          'Testing'
          // val == 'outlook'
          //     ? 'Outlook'
          //     : val == 'gsuite'
          //         ? 'Gsuite'
          //         : 'Icalendar',
        ),
        value: _valueCheck,
        onChanged: (bool value) {
          print('changes value $value');
          setState(() {
            _valueCheck = value;
          });
        },
      );
  }
}