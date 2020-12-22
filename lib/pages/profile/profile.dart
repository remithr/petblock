import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:petblock/styles/petblock_app.dart';
import 'package:petblock/styles/style.dart';

class ProfilePage extends StatelessWidget {
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
          'My Profile',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              // Icons.logout,
              PetblockApp.signout,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          verticalSpace20,
          // Text('Profile Page'),
          _buildProfileSection(context),
          Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
              right: 20.0,
            ),
            child: Divider(
              color: unselected,
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text(
                'My Pets',
                style: taddpet,
              ),
            ),
          ),
          _gridPetWidget(context),
        ],
      ),
    );
  }

  Padding _buildProfileSection(context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ClipOval(
            child: Image.asset(
              'assets/images/avatar.png',
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
          horizontalSpace10,
          Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Sophia Steven',
                  style: titleStyle,
                ),
                verticalSpace05,
                Text('New York'),
                verticalSpace10,
                Text('0253-235-223'),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Align(
                alignment: Alignment.topRight,
                child: GestureDetector(
                  onTap: () {
                    print('Edit page tapped');
                    Navigator.of(context).pushNamed('edit-profile');
                  },
                  child: Icon(
                    PetblockApp.edit,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Padding _gridPetWidget(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.60,
        child: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          children: List.generate(imageList.length, (i) {
            return GestureDetector(
              onTap: () {},
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
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 10.0,
                            top: 10.0,
                          ),
                          child: Align(
                            child: Icon(
                              imageList[i]['gender'] == "male"
                                  ? PetblockApp.male
                                  : PetblockApp.female,
                            ),
                            alignment: Alignment.topRight,
                          ),
                        ),
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
                          style: titleStyle,
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
      ),
    );
  }
}
