import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:petblock/models/country.dart';
import 'package:petblock/services/api-service.dart';
import 'package:petblock/styles/style.dart';

class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  List<Country> countryList = [];
  bool countriesLoaded = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            // color: unselected,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                10,
              ),
              color: unselected,
            ),
            child: BackButton(
              color: Colors.black,
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Edit Profile',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 15.0,
            right: 15.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: ClipOval(
                  child: Image.asset(
                    'assets/images/avatar.png',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              verticalSpace05,
              Center(
                child: Text(
                  'Edit Profile Picture',
                  style: titleStyle,
                ),
              ),
              _textFieldTitle('Full Name'),
              verticalSpace10,
              _formField(context),
              _textFieldTitle('Phone No'),
              verticalSpace10,
              _formField(context),
              _textFieldTitle('Country'),
              verticalSpace10,
              _formField(context),
              _textFieldTitle('State'),
              verticalSpace10,
              _formField(context),
              _textFieldTitle('City'),
              verticalSpace10,
              _formField(context),
              _textFieldTitle('Address'),
              verticalSpace10,
              _formField(context),
              _textFieldTitle('Country'),
              if (countriesLoaded) _countryDropDown(context),
            ],
          ),
        ),
      ),
    );
  }

  Padding _countryDropDown(context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: ipBoxDecoration,
        child: new DropdownButton(
          isExpanded: true,
          items: countryList.map((item) {
            return DropdownMenuItem(
              child: Text(item.country),
              value: item.countryCode, // <===== use country code as value
            );
          }).toList(),
          onChanged: (newVal) {
            setState(() {
              // _mySelection = newVal;
              // // I get full country info
              // var country = data.firstWhere((i) => i['CountryCode'] == newVal);
              // // do what you want with the selection....
            });
          },
          // value: _mySelection,
        ),
      ),
    );
  }

  Padding _formField(context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: ipBoxDecoration,
        child: TextFormField(
          validator: (value) {
            if (value.isEmpty) {
              return 'Please enter some text';
            }
            return null;
          },
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(
              top: 14.0,
            ),
          ),
        ),
      ),
    );
  }

  Text _textFieldTitle(fieldName) {
    return Text(
      fieldName,
      style: textfieldTitle,
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ApiService().getCountries().then((countryList) {
      // print(countryList);
      countryList = json
          .decode(countryList)
          .map((model) => Country.fromJson(model))
          .toList();
      countriesLoaded = true;
      setState(() {});
      // print(countryList);
    }).catchError((err) {
      print(err);
    });
  }
}
