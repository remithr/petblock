import 'package:flutter/material.dart';
import 'package:petblock/styles/style.dart';

class MatchSearch extends StatefulWidget {
  @override
  _MatchSearchState createState() => _MatchSearchState();
}

class _MatchSearchState extends State<MatchSearch> {
  String _currentSelectedValue;
    var _ages = [
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8"
  ];

  var _states = [
    "Maharashtra",
    "Gujarat",
    "Rajasthan",
    "Uttar Pradesh",
    "Karnataka",
    "Kerala",
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            verticalSpace40,
            Text("Max's Match Search",style: pTitle,),
            verticalSpace40,
            _addTextLable('Match Purpose'),
             verticalSpace10,
            _buildButton(),
            verticalSpace20,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Flexible(
                  child: Stack(
                    children: [
                      _addTextLable('Breed'),
                      verticalSpace10,
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: buildTextField('1st'),
                      ),
                    ],
                  ),
                ),
                Flexible(
                  child: Stack(
                    children: [
                      _addTextLable('Age'),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: _buildDropdown('country'),
                      )
                    ],
                  ),
                ),
              ],
            ),
            verticalSpace10,
            _addTextLable('Pet gender'),
            verticalSpace10,
            _buildButton(),
            verticalSpace10,
            _addTextLable('Zipcode'),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: buildTextField('Zipcode'),
            ),
            _addTextLable('Distance'),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: buildTextField('Distance'),
            ),
            Padding(
              padding: const EdgeInsets.only(left:18.0, right: 18.0),
              child: SizedBox(
                height: 54,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed('map-match');
                  },
                  child: Text(
                    "Search",
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
      ),
    );
  }

  _addTextLable(val) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Text(
        val,
        textAlign: TextAlign.left,
        // style: lgText,
      ),
    );
  }

  _buildButton() {
    return ListTile(
      title: Row(
        children: <Widget>[
          Expanded(
            child: SizedBox(
              height: 55,
              child: RaisedButton(
                onPressed: () {},
                child: Text("Clear"),
                color: Colors.white,
                textColor: Colors.black,
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: primaryColor, width: 1),
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 30,
          ),
          Expanded(
            child: SizedBox(
              height: 55,
              child: RaisedButton(
                  onPressed: () {},
                  child: Text("Filter"),
                  color: Colors.white,
                  textColor: Colors.black,
                  shape: RoundedRectangleBorder(
                  side: BorderSide(color: primaryColor, width: 1),
                  borderRadius: BorderRadius.circular(10.0),
                ),),
            ),
          ),
        ],
      ),
    );
  }

    _buildDropdown(val) {
    return FormField<String>(
      builder: (FormFieldState<String> state) {
        return InputDecorator(
          baseStyle: TextStyle(backgroundColor: greyF9),
          decoration: InputDecoration(
            //labelStyle: textStyle,
            filled: true,
            fillColor: twhite,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(12.0)),
              borderSide: BorderSide(color: primaryColor, width: 1),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              borderSide: BorderSide(
                color: greyF9,
              ),
            ),
            errorStyle: TextStyle(color: Colors.redAccent, fontSize: 16.0),
          ),
          isEmpty: _currentSelectedValue == '',
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              hint: Text(val),
              value: _currentSelectedValue,
              isDense: true,
              onChanged: (String newValue) {
                setState(() {
                  _currentSelectedValue = newValue;
                  state.didChange(newValue);
                });
              },
              items: val == 'country'
                  ? _ages.map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList()
                  : _states.map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList()
            ),
          ),
        );
      },
    );
  }

  TextField buildTextField(val) {
    return TextField(
      obscureText: false,
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
}
