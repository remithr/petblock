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
  var dropdownValue;
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
              // _textFieldTitle('Country'),
              // if (countriesLoaded) _countryDropDown(context),
              _textFieldTitle('Catendar Sync'),
              verticalSpace10,
              _selectedBox(context),
              verticalSpace20,
              _unSelectedBox(context, 'Gsuite'),
              verticalSpace20,
              _unSelectedBox(context, 'ICalendar'),
              verticalSpace20,
              MaterialButton(
                onPressed: () {
                  print('Button pressed');
                },
                child: Text(
                  'Save Profile',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                color: primaryColor,
                height: 50,
                minWidth: MediaQuery.of(context).size.width,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container _selectedBox(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          10,
        ),
        color: primaryColor,
      ),
      width: MediaQuery.of(context).size.width * 0.6,
      child: ListTile(
        title: Text(
          'Outlook',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        trailing: Icon(
          Icons.check_box_outlined,
          color: Colors.white,
        ),
      ),
    );
  }

  Container _unSelectedBox(BuildContext context, value) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          10,
        ),
        border: Border.all(
          color: unselected,
          width: 2,
        ),
      ),
      width: MediaQuery.of(context).size.width * 0.6,
      child: ListTile(
        title: Text(
          value,
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            // fontWeight: FontWeight.bold,
          ),
        ),
        trailing: Icon(
          Icons.check_box_outline_blank,
          color: unselected,
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
        child: DropdownButton(
          // isExpanded: true,
          isDense: true,
          iconSize: 44,
          elevation: 16,
          value: dropdownValue,
          items: countryList.map((Country item) {
            print(item);
            return DropdownMenuItem<String>(
              child: Text(
                item.country,
                style: taddpet,
              ),
              value: item.country,
            );
          }).toList(),
          onChanged: (newVal) {
            setState(() {
              dropdownValue = newVal;
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
    ApiService().getCountries().then((ctryList) {
      // print(countryList);
      countryList = ctryList;
      countriesLoaded = true;
      setState(() {});
      // print(countryList);
    }).catchError((err) {
      print('171');
      print(err);
    });
  }
}
