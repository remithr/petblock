import 'package:flutter/material.dart';
import 'package:petblock/styles/style.dart';

class AddPet extends StatefulWidget {
  @override
  _AddPetState createState() => _AddPetState();
}

class _AddPetState extends State<AddPet> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 40, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Add Pet',
                  style: titleStyle,
                ),
                verticalSpace10,
                _addButtonWidget(),
                Form(
                  key: _formKey,
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Pet Name*'),
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
                                Text('Species'),
                                verticalSpace05,
                                _formField(),
                              ],
                            )),
                            horizontalSpace05,
                            // Text('Breed'),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Breed'),
                                  verticalSpace05,
                                  _formField(),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      verticalSpace10,
                      Text('Birth Date'),
                      verticalSpace05,
                      _formField(),
                      verticalSpace10,
                      Text('Pedigree Certificate'),
                      verticalSpace05,
                      _formField(),
                      verticalSpace10,
                      verticalSpace10,
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                          child: RaisedButton(
                            color: primaryColor,
                            // elevation: 5.0,
                            onPressed: () {},
                            child: Text(
                              'Save Profile',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
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
