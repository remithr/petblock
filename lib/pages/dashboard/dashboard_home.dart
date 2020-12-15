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
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(
            top: 20.0,
            left: 20,
            right: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildRow1(),
              verticalSpace20,
              Text(
                'Services',
                style: titleStyle,
              ),
              _buildSubMenu(),
              verticalSpace20,
              _noPetsWidget(),
              verticalSpace40,
              _addPetButton(),
            ],
          ),
        ),
        bottomNavigationBar: _bottomNavigationWidget(),
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
            PetblockApp.vector,
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
        Text(
          'You haven’t added any pets',
          style: noPets,
        )
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
            verticalSpace05,
            Icon(
              Icons.notifications_none_outlined,
            ),
            verticalSpace05,
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
