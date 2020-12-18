import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:petblock/styles/petblock_app.dart';
import 'package:petblock/styles/style.dart';

class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  int _selectedIndex = 0;
  bool addPet = false;
  List serviceList = [];
  Map selectedPet = {};
  final List<Map<String, dynamic>> imageList = [
    {
      "image": "assets/images/bowser.png",
      "name": "Bowser",
      "age": "2 years old",
      "services": [
        {
          "image": "assets/images/service-1.png",
          "name": "Posh Pows",
          "address": "American street, Main street",
          "distance": "2,5km",
          "meal": "4.5"
        },
        {
          "image": "assets/images/service-2.png",
          "name": "Enlighten Dogs",
          "address": "American street, Main street",
          "distance": "2,5km",
          "meal": "4.5"
        }
      ]
    },
    {
      "image": "assets/images/cherry.png",
      "name": "Cherry",
      "age": "3 years old",
      "services": [
        {
          "image": "assets/images/service-1.png",
          "name": "Posh Pows",
          "address": "American street, Main street",
          "distance": "2,5km",
          "meal": "4.5"
        },
        {
          "image": "assets/images/service-2.png",
          "name": "Enlighten Dogs",
          "address": "American street, Main street",
          "distance": "2,5km",
          "meal": "4.5"
        }
      ]
    },
    {
      "image": "assets/images/max.png",
      "name": "Max",
      "age": "1 year old",
      "services": [
        {
          "image": "assets/images/service-1.png",
          "name": "Posh Pows",
          "address": "American street, Main street",
          "distance": "2,5km",
          "meal": "4.5"
        },
        {
          "image": "assets/images/service-2.png",
          "name": "Enlighten Dogs",
          "address": "American street, Main street",
          "distance": "2,5km",
          "meal": "4.5"
        }
      ]
    },
    {
      "image": "assets/images/melody.png",
      "name": "Melody",
      "age": "4 years old",
      "services": [
        {
          "image": "assets/images/service-1.png",
          "name": "Posh Pows",
          "address": "American street, Main street",
          "distance": "2,5km",
          "meal": "4.5"
        },
        {
          "image": "assets/images/service-2.png",
          "name": "Enlighten Dogs",
          "address": "American street, Main street",
          "distance": "2,5km",
          "meal": "4.5"
        }
      ]
    },
    {
      "image": "assets/images/celine.png",
      "name": "Celine",
      "age": "4 years old",
      "services": [
        {
          "image": "assets/images/service-1.png",
          "name": "Posh Pows",
          "address": "American street, Main street",
          "distance": "2,5km",
          "meal": "4.5"
        },
        {
          "image": "assets/images/service-2.png",
          "name": "Enlighten Dogs",
          "address": "American street, Main street",
          "distance": "2,5km",
          "meal": "4.5"
        }
      ]
    },
    {
      "image": "assets/images/oreo.png",
      "name": "Oreo",
      "age": "4 years old",
      "services": [
        {
          "image": "assets/images/service-1.png",
          "name": "Posh Pows",
          "address": "American street, Main street",
          "distance": "2,5km",
          "meal": "4.5"
        },
        {
          "image": "assets/images/service-2.png",
          "name": "Enlighten Dogs",
          "address": "American street, Main street",
          "distance": "2,5km",
          "meal": "4.5"
        }
      ]
    },
    {
      "image": "assets/images/oreo.png",
      "name": "Oreo",
      "age": "4 years old",
      "services": [
        {
          "image": "assets/images/service-1.png",
          "name": "Posh Pows",
          "address": "American street, Main street",
          "distance": "2,5km",
          "meal": "4.5"
        },
        {
          "image": "assets/images/service-2.png",
          "name": "Enlighten Dogs",
          "address": "American street, Main street",
          "distance": "2,5km",
          "meal": "4.5"
        }
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(
            top: 10.0,
            left: 20,
            right: 20,
          ),
          // child: _selectedIndex == 0
          //     ? _buildHomeWidget()
          //     : _selectedIndex == 1
          //         ? Container(
          //             child: Center(
          //               child: Text(
          //                 'ONE',
          //               ),
          //             ),
          //           )
          //         : _selectedIndex == 2
          //             ? Container(
          //                 child: Center(
          //                   child: Text('TWO'),
          //                 ),
          //               )
          //             : _selectedIndex == 3
          //                 ? _buildGridViewBlock()
          //                 : Container(
          //                     child: Center(
          //                       child: Text('Messages Block'),
          //                     ),
          //                   ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildRow1(),
              verticalSpace20,
              if (_selectedIndex == 0)
                Text(
                  'Services',
                  style: titleStyle,
                ),
              if (_selectedIndex == 1)
                Text(
                  'Appointments',
                  style: titleStyle,
                ),
              if (_selectedIndex == 2)
                Text(
                  'Payment Methods',
                  style: titleStyle,
                ),
              if (_selectedIndex == 3)
                Text(
                  'My Pets',
                  style: titleStyle,
                ),
              if (_selectedIndex == 0) _buildSubMenu(),
              verticalSpace05,
              if (_selectedIndex == 0)
                if (!addPet) _noPetsWidget(),
              // verticalSpace05,
              if (_selectedIndex == 0)
                if (!addPet) _addPetButton() else _buildPetsSection(),
              if (_selectedIndex == 1)
                Container(
                  child: Center(
                    child: Text(
                      'ONE',
                    ),
                  ),
                ),
              if (_selectedIndex == 2)
                Column(
                  children: [
                    verticalSpace10,
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 100,
                      decoration: BoxDecoration(
                        border: Border.all(color: tgrey, width: 2.0),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: ListTile(
                          leading: Image.asset(
                            'assets/icons/paypal.png',
                          ),
                          title: Text('Paypal Email'),
                          subtitle: Text('paypal@user.com'),
                          trailing: Icon(Icons.check_box),
                        ),
                      ),
                    ),
                    verticalSpace10,
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 100,
                      decoration: BoxDecoration(
                        border: Border.all(color: tgrey, width: 2.0),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: ListTile(
                          leading: Image.asset(
                            'assets/icons/scart.png',
                          ),
                          title: Text('Pay in person/ at store'),
                          // subtitle: Text('paypal@user.com'),
                          trailing: Icon(Icons.check_box),
                        ),
                      ),
                    ),
                  ],
                ),

              if (_selectedIndex == 3) _buildGridViewBlock(),
              if (_selectedIndex == 4)
                Container(
                  child: Center(
                    child: Text('Messages Section'),
                  ),
                ),
            ],
          ),
        ),
        bottomNavigationBar: _bottomNavigationWidget(),
      ),
    );
  }

  Container _buildGridViewBlock() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.73,
      child: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        children: List.generate(imageList.length, (i) {
          return GestureDetector(
            onTap: () {
              print(imageList[i]);
              serviceList = imageList[i]['services'];
              selectedPet = imageList[i];
              setState(() {});
            },
            child: Padding(
              padding: const EdgeInsets.only(
                // left: 8.0,
                right: 8.0,
              ),
              child: Container(
                width: 165,
                // height: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    10.0,
                  ),
                  color: primaryColorLight,
                ),
                child: Card(
                  elevation: 2,
                  // shadowColor: primaryColorLight,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      10.0,
                    ),
                  ),
                  child: Column(
                    children: [
                      verticalSpace05,
                      CircleAvatar(
                        radius: 40,
                        // backgroundColor: Color(0xffFDCF09),
                        child: CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage(
                            imageList[i]['image'],
                          ),
                        ),
                      ),
                      verticalSpace05,
                      Text(
                        imageList[i]['name'],
                        style: tabsStyle,
                      ),
                      verticalSpace05,
                      Text(
                        imageList[i]['age'],
                        style: greyedText,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }

  Column _buildHomeWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildRow1(),
        verticalSpace20,
        Text(
          'Services',
          style: titleStyle,
        ),
        _buildSubMenu(),
        verticalSpace05,
        if (!addPet) _noPetsWidget(),
        // verticalSpace05,
        if (!addPet) _addPetButton() else _buildPetsSection()
      ],
    );
  }

  Padding _buildPetsSection() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'My Pets',
                style: tabsStyle,
              ),
              SizedBox(width: 220),
              Text(
                'Add Pet',
                style: taddpet,
              ),
            ],
          ),
          verticalSpace05,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _petListWidget(),
              verticalSpace05,
              if (serviceList.length != 0)
                Text(
                  'Services for ' + selectedPet['name'],
                  style: tabsStyle,
                ),
              verticalSpace05,
              _servicesWidget(),
            ],
          ),
        ],
      ),
    );
  }

  Container _petListWidget() {
    return Container(
      height: 160,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext ctx, int i) {
          return GestureDetector(
            onTap: () {
              print(imageList[i]);
              serviceList = imageList[i]['services'];
              selectedPet = imageList[i];
              setState(() {});
            },
            child: Padding(
              padding: const EdgeInsets.only(
                // left: 8.0,
                right: 8.0,
              ),
              child: Container(
                width: 165,
                // height: 180,
                child: Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      10.0,
                    ),
                  ),
                  child: Column(
                    children: [
                      verticalSpace05,
                      CircleAvatar(
                        radius: 40,
                        // backgroundColor: Color(0xffFDCF09),
                        child: CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage(
                            imageList[i]['image'],
                          ),
                        ),
                      ),
                      verticalSpace05,
                      Text(
                        imageList[i]['name'],
                        style: tabsStyle,
                      ),
                      verticalSpace05,
                      Text(
                        imageList[i]['age'],
                        style: greyedText,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
        itemCount: imageList.length,
      ),
    );
  }

  Container _servicesWidget() {
    return Container(
      height: 180,
      // width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext ctx, int i) {
          return Padding(
            padding: const EdgeInsets.only(
              // left: 8.0,
              right: 8.0,
            ),
            child: Stack(
              children: [
                Container(
                  width: 165,
                  child: Image.asset(
                    serviceList[i]['image'],
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                  bottom: 20,
                  left: 20,
                  child: Container(
                    height: 70,
                    width: 125,
                    // color: twhite,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: tgrey,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      color: twhite,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        // mainAxisAlignment:
                        //     MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            serviceList[i]['name'],
                            style: tcard,
                          ),
                          Text(
                            serviceList[i]['address'],
                            style: cdesc,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    PetblockApp.pin,
                                    size: 10,
                                    color: Colors.black,
                                  ),
                                  Text(
                                    serviceList[i]['distance'],
                                    style: cdesc,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  // Icon(PetblockApp.bone),
                                  Text(
                                    serviceList[i]['meal'],
                                    style: cdesc,
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
        itemCount: serviceList.length,
      ),
    );
  }

  SizedBox _addPetButton() {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: RaisedButton(
        onPressed: () {
          print('Add pet Button pressed');
          addPet = true;
          setState(() {});
        },
        color: primaryColor,
        child: Text(
          'Add Pet',
          style: TextStyle(
            color: twhite,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  BottomNavigationBar _bottomNavigationWidget() {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            PetblockApp.home,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            PetblockApp.appointment,
          ),
          label: 'Appontment',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            PetblockApp.money,
          ),
          label: 'Money',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            PetblockApp.pets,
          ),
          label: 'Pets',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            PetblockApp.msg,
          ),
          label: 'Message',
        ),
      ],
      type: BottomNavigationBarType.fixed,
      currentIndex: _selectedIndex,
      selectedItemColor: primaryColor,
      unselectedItemColor: unselected,
      onTap: _onItemTapped,
      showSelectedLabels: false,
      showUnselectedLabels: false,
    );
  }

  Column _noPetsWidget() {
    return Column(
      children: [
        Center(
          child: Image.asset(
            'assets/icons/no-pet.png',
          ),
        ),
        verticalSpace05,
        Text(
          'You haven’t added any pets',
          style: noPets,
        ),
        verticalSpace05,
        verticalSpace40,
      ],
    );
  }

  Padding _buildSubMenu() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Image.asset(
                'assets/icons/care.png',
                scale: 0.8,
              ),
              verticalSpace05,
              Text(
                'Care',
                style: tabsStyle,
              ),
            ],
          ),
          horizontalSpace20,
          Column(
            children: [
              Image.asset(
                'assets/icons/training.png',
                scale: 0.8,
              ),
              verticalSpace05,
              Text(
                'Training',
                style: tabsStyle,
              ),
            ],
          ),
          horizontalSpace20,
          Column(
            children: [
              Image.asset(
                'assets/icons/vet.png',
                scale: 0.8,
              ),
              verticalSpace05,
              Text(
                'Vet',
                style: tabsStyle,
              ),
            ],
          ),
          horizontalSpace20,
          Column(
            children: [
              Image.asset(
                'assets/icons/matching.png',
                scale: 0.8,
              ),
              verticalSpace05,
              Text(
                'Matching',
                style: tabsStyle,
              ),
            ],
          ),
          horizontalSpace20,
          Column(
            children: [
              Image.asset(
                'assets/icons/vet-loc.png',
                scale: 0.8,
              ),
              verticalSpace05,
              Text(
                'Places',
                style: tabsStyle,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Row buildRow1() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          'assets/icons/logo-1.png',
        ),
        Row(
          children: [
            Icon(
              Icons.search,
            ),
            horizontalSpace10,
            Icon(
              PetblockApp.notification,
            ),
            horizontalSpace10,
            Image.asset(
              'assets/icons/avatar.png',
            ),
            // CircleAvatar(

            //   child:
            // )
          ],
        )
      ],
    );
  }

  void _onItemTapped(int index) {
    print(index);
    setState(() {
      _selectedIndex = index;
    });
  }
}
