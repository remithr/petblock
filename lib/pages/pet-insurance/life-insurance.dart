import 'package:flutter/material.dart';
import 'package:petblock/styles/style.dart';

class LifeInsurancePage extends StatefulWidget {
  @override
  _LifeInsurancePageState createState() => _LifeInsurancePageState();
}

class _LifeInsurancePageState extends State<LifeInsurancePage> {
  List <Map<String,dynamic>> insuranceCompanies = [{
    "name":"Healthy Paws", "desc":"Best Value with reimbursements fulfilled in as little as two days."
  },{
    "name":"Embrace", "desc":"High coverage for dental illnesses."
  },{
    "name":"Pet Plan", "desc":"High coverage for dental illnesses."
  }];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(4.0),
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
          'Life Insurance Companies',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Icon(
              Icons.search,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              child: Column(
                children: [],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
