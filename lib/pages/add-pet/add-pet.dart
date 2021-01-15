import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:petblock/styles/petblock_app.dart';
import 'package:petblock/styles/style.dart';

class AddPet extends StatefulWidget {
  @override
  _AddPetState createState() => _AddPetState();
}

class _AddPetState extends State<AddPet> {
  final _formKey = GlobalKey<FormState>();
  bool date = false;
  bool permission = false;
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
          'Add Pet',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _addButtonWidget(),
                Form(
                  key: _formKey,
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _textFieldTitle('Pet Name*'),
                      verticalSpace10,
                      _formField(),
                      verticalSpace10,
                      Container(
                        child: Row(
                          children: [
                            // Text('Species'),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  _textFieldTitle('Species'),
                                  verticalSpace05,
                                  _formIconField('Species'),
                                ],
                              ),
                            ),
                            horizontalSpace05,
                            // Text('Breed'),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  _textFieldTitle('Breed'),
                                  verticalSpace05,
                                  _formIconField('Breed'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      verticalSpace10,
                      _textFieldTitle('Birth Date'),
                      verticalSpace05,
                      _formIconField('Birth Date'),
                      verticalSpace10,
                      _textFieldTitle('Pedigree Certificate'),
                      verticalSpace05,
                      _formIconField('Pedigree Certificate'),
                      verticalSpace20,
                      _uploadField('Upload Vaccine Booklet'),
                      verticalSpace20,
                      _uploadField('Upload More Pet Images'),
                      verticalSpace20,
                      _buildSwitchSection('Date My Pet'),
                      verticalSpace20,
                      _buildSwitchSection(
                          'Participate in marketing revenue share program(Coming Soon)?'),
                      verticalSpace20,
                      _addPetButton(context),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Padding _buildSwitchSection(val) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 8.0,
        right: 8.0,
      ),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 50,
        // decoration: upBoxDecoration,
        // color: unselected,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.6,
              child: Text(
                val,
                style: textfieldTitle,
                softWrap: true,
                maxLines: 3,
              ),
            ),
            // Switch(
            //   value: date,
            //   onChanged: toggleSwitch,
            // ),
            if (val == 'Date My Pet')
              CupertinoSwitch(
                value: date,
                onChanged: toggleDate,
              ),
            if (val != 'Date My Pet')
              CupertinoSwitch(
                value: permission,
                onChanged: togglePermission,
              ),
          ],
        ),
      ),
    );
  }

  void toggleDate(bool value) {
    date = !date;
    if (date) {
      print('Delete popup');
    }
    setState(() {});
  }

  void togglePermission(bool value) {
    permission = !permission;
    if (permission) {
      print('Permission popup');
    }
    setState(() {});
  }

  Container _addPetButton(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      // decoration: BoxDecoration(
      //   borderRadius: BorderRadius.circular(20),
      // ),
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
        child: RaisedButton(
          color: primaryColor,
          // elevation: 5.0,
          onPressed: () {},
          child: Text(
            'Add Pet',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              10,
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

  Container _uploadField(val) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      decoration: upBoxDecoration,
      //color: unselected,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              val,
              style: textfieldTitle,
            ),
          ),
          Icon(
            Icons.upload_outlined,
            // PetblockApp.
            // .,
          )
        ],
      ),
    );
  }

  Container _formField() {
    return Container(
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
    );
  }

  Container _formIconField(val) {
    // print(val);
    return Container(
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
          suffixIcon: val == 'Species'
              ? IconButton(
                  icon: Icon(
                    Icons.keyboard_arrow_down,
                  ),
                  onPressed: () {
                    print('calendar pressed');
                  },
                )
              : val == 'Breed'
                  ? IconButton(
                      icon: Icon(
                        Icons.keyboard_arrow_down,
                      ),
                      onPressed: () {
                        print('calendar pressed');
                      },
                    )
                  : val == 'Birth Date'
                      ? IconButton(
                          icon: Icon(
                            PetblockApp.calendar,
                          ),
                          onPressed: () {
                            print('calendar pressed');
                          },
                        )
                      : IconButton(
                          icon: Icon(
                            Icons.close,
                          ),
                          onPressed: () {
                            print('calendar pressed');
                          },
                        ),
        ),
      ),
    );
  }

  GestureDetector _addButtonWidget() {
    return GestureDetector(
      onTap: () {
        print('Add tapped');
      },
      child: Align(
        alignment: Alignment.center,
        child: Container(
          width: 80.0,
          height: 80.0,
          // color: MyColors.primaryColorLight,
          decoration: BoxDecoration(
            // color: primaryColor,
            borderRadius: BorderRadius.circular(80.0),
            border: Border.all(
              color: primaryColor,
              width: 2.0,
            ),
          ),
          child: Center(
            child: Icon(
              Icons.add,
              // color: MyColors.primaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
