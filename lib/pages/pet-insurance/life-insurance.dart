import 'package:flutter/material.dart';
import 'package:petblock/styles/style.dart';

class LifeInsurancePage extends StatefulWidget {
  @override
  _LifeInsurancePageState createState() => _LifeInsurancePageState();
}

class _LifeInsurancePageState extends State<LifeInsurancePage> {
  List<Map<String, dynamic>> insuranceCompanies = [
    {
      "name": "Healthy Paws",
      "desc":
          "Best Value with reimbursements fulfilled in as little as two days."
    },
    {"name": "Embrace", "desc": "High coverage for dental illnesses."},
    {"name": "Pet Plan", "desc": "High coverage for dental illnesses."}
  ];

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
          // crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            insuranceCards(insuranceCompanies[0]),
            verticalSpace10,
            insuranceCards(insuranceCompanies[1]),
            verticalSpace10,
            insuranceCards(insuranceCompanies[2]),
          ],
        ),
      ),
    );
  }

  Container insuranceCards(cmpny) {
    return Container(
      padding: EdgeInsets.only(
        left: 20,
        right: 20,
      ),
      height: 200,
      // width: MediaQuery.of(context).size.width * 0.8,
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            10,
          ),
        ),
        child: Column(
          children: [
            Container(
              height: 100,
              // width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                image: DecorationImage(
                  image: AssetImage(
                    "assets/images/insurance_cover.png",
                  ),
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.topCenter,
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                child: Text(
                  cmpny['name'],
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 8.0,
                  top: 8.0,
                  bottom: 8.0,
                ),
                child: Text(
                  cmpny['desc'],
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: gtext,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
