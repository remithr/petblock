import 'package:flutter/material.dart';
import 'package:petblock/styles/style.dart';

class PetInsuranceHome extends StatefulWidget {
  @override
  _PetInsuranceHomeState createState() => _PetInsuranceHomeState();
}

class _PetInsuranceHomeState extends State<PetInsuranceHome> {
  List<Map<String, dynamic>> insurance = [
    {
      "image": "assets/icons/health.png",
      "color": 0XFF5E56A0,
      "type": "life",
      "text": "Health \nInsurance"
    },
    {
      "image": "assets/icons/life.png",
      "color": 0XFF6EA799,
      "type": "health",
      "text": "Life \nInsurance"
    },
    {
      "image": "assets/icons/travel.png",
      "color": 0XFFF7BE65,
      "type": "travel",
      "text": "Travel \nInsurance"
    },
    {
      "image": "assets/icons/liability.png",
      "color": 0XFFF4A0A4,
      "type": "liability",
      "text": "Liability \nInsurance"
    },
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
          'Pet Insurance',
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
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 1.0,
        mainAxisSpacing: 1.0,
        shrinkWrap: true,
        children: List.generate(
          insurance.length,
          (index) {
            return GestureDetector(
              onTap: () {
                print(insurance[index]['type']);
                if (insurance[index]['type'] == 'health') {
                  print(insurance[index]['type']);
                  Navigator.of(context).pushNamed('life-insurance');
                }
              },
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: insurance[index]['type'] == 'life'
                            ? Color(0XFF5E56A0)
                            : insurance[index]['type'] == 'health'
                                ? Color(0XFF6EA799)
                                : insurance[index]['type'] == 'travel'
                                    ? Color(0XFFF7BE65)
                                    : insurance[index]['type'] == 'liability'
                                        ? Color(0XFFF4A0A4)
                                        : Color(0XFFF4A0A4),
                        image: DecorationImage(
                          image: AssetImage(insurance[index]['image']),
                          fit: BoxFit.scaleDown,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                      child: Text(
                        insurance[index]['text'],
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
