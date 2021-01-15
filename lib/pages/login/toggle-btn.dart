import 'package:flutter/material.dart';

class ToggleButton extends StatefulWidget {
  @override
  _ToggleButtonState createState() => _ToggleButtonState();
}

class _ToggleButtonState extends State<ToggleButton> {
  bool _toggled = false;

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
        title: Text('Share my information'),
        value: _toggled,
        onChanged: (bool value) {
          setState(() {
            _toggled = value;
          });
        });
  }
}
