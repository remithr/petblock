import 'package:flutter/material.dart';
import 'package:petblock/styles/petblock_app.dart';
import 'package:petblock/styles/style.dart';

class ReviewsPage extends StatelessWidget {
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
          'Reviews',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.9,
          child: ListView(
            children: [
              ListTile(
                title: Text(
                  'Posh Pows provides a great service!! All staff is very nice',
                ),
                subtitle: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        children: [
                          Icon(
                            PetblockApp.bone,
                            color: primaryColor,
                            size: 15,
                          ),
                          Icon(
                            PetblockApp.bone,
                            color: primaryColor,
                            size: 15,
                          ),
                          Icon(
                            PetblockApp.bone,
                            color: primaryColor,
                            size: 15,
                          ),
                          Icon(
                            PetblockApp.bone,
                            color: primaryColor,
                            size: 15,
                          ),
                        ],
                      ),
                    ),
                    Text(
                      'John | 23 June 2020',
                    ),
                  ],
                ),
              ),
              verticalSpace20,
              ListTile(
                title: Text(
                  'Posh Pows provides a great service!! All staff is very nice',
                ),
                subtitle: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        children: [
                          Icon(
                            PetblockApp.bone,
                            color: primaryColor,
                            size: 15,
                          ),
                          Icon(
                            PetblockApp.bone,
                            color: primaryColor,
                            size: 15,
                          ),
                          Icon(
                            PetblockApp.bone,
                            color: primaryColor,
                            size: 15,
                          ),
                          Icon(
                            PetblockApp.bone,
                            color: primaryColor,
                            size: 15,
                          ),
                        ],
                      ),
                    ),
                    Text(
                      'John | 23 June 2020',
                    ),
                  ],
                ),
              ),
              verticalSpace20,
              ListTile(
                title: Text(
                  'Posh Pows provides a great service!! All staff is very nice',
                ),
                subtitle: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        children: [
                          Icon(
                            PetblockApp.bone,
                            color: primaryColor,
                            size: 15,
                          ),
                          Icon(
                            PetblockApp.bone,
                            color: primaryColor,
                            size: 15,
                          ),
                          Icon(
                            PetblockApp.bone,
                            color: primaryColor,
                            size: 15,
                          ),
                          Icon(
                            PetblockApp.bone,
                            color: primaryColor,
                            size: 15,
                          ),
                        ],
                      ),
                    ),
                    Text(
                      'John | 23 June 2020',
                    ),
                  ],
                ),
              ),
              verticalSpace20,
              ListTile(
                title: Text(
                  'Posh Pows provides a great service!! All staff is very nice',
                ),
                subtitle: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        children: [
                          boneIcon,
                          boneIcon,
                          boneIcon,
                          boneIcon,
                        ],
                      ),
                    ),
                    Text(
                      'John | 23 June 2020',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
