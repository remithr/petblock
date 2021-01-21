import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:petblock/styles/petblock_app.dart';
import 'package:petblock/styles/style.dart';
import 'package:adaptive_action_sheet/adaptive_action_sheet.dart';

class PetVetDetailsPage extends StatefulWidget {
  @override
  _PetVetDetailsPageState createState() => _PetVetDetailsPageState();
}

class _PetVetDetailsPageState extends State<PetVetDetailsPage> {
  bool yesChecked = false;
  @override
  Widget build(BuildContext context) {
    var serviceDetails =
        ModalRoute.of(context).settings.arguments as Map<String, dynamic>;
    print(serviceDetails);
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              left: 0,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.6,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 20.0,
                    top: 30.0,
                    bottom: 5,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Caring Claws Vet",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  boneIcon,
                                  boneIcon,
                                  boneIcon,
                                  boneIcon,
                                ],
                              ),
                            ],
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 20.0,
                                right: 20.0,
                              ),
                              child: RaisedButton(
                                onPressed: () {
                                  // TO navigate to book now stepper page.
                                  Navigator.of(context)
                                      .pushNamed('book-service');
                                },
                                color: primaryColor,
                                child: Text(
                                  'Book Now',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          final action = CupertinoActionSheet(
                            title: Text(
                              "Write a Review",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            actions: [
                              CupertinoActionSheetAction(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      // ListTile(
                                      //   leading: Image.asset(
                                      //     'assets/images/review.av.png',
                                      //   ),
                                      //   title: Text(
                                      //     'Pet Owner',
                                      //   ),
                                      //   subtitle: Text(
                                      //     'New York',
                                      //   ),
                                      // ),
                                      Row(
                                        children: [
                                          Image.asset(
                                            'assets/images/review-av.png',
                                          ),
                                          Column(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                  left: 8.0,
                                                ),
                                                child: Text(
                                                  'Pet Owner',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 16,
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                'New York',
                                                style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 14,
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                      Text(
                                        'Share your experience',
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 16,
                                        ),
                                      ),
                                      verticalSpace10,
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          left: 8.0,
                                          right: 8.0,
                                        ),
                                        child: Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: 50,
                                          decoration: ipBoxDecoration,
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                              top: 10.0,
                                            ),
                                            child: Text(
                                              'Very Good Service',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 18,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          OutlineButton(
                                            onPressed: () {},
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                8,
                                              ),
                                            ),
                                            color: primaryColor,
                                            focusColor: primaryColor,
                                            child: Text(
                                              'Cancel',
                                              style: paypalButtons,
                                            ),
                                          ),
                                          horizontalSpace20,
                                          Container(
                                            child: MaterialButton(
                                              onPressed: () {
                                                print('Pay Button pressed');
                                              },
                                              child: Text(
                                                'Post',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16,
                                                ),
                                              ),
                                              color: primaryColor,
                                              // height: 50,
                                              // minWidth: MediaQuery.of(context).size.width,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  8.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        'Has your dog bitten another dog?',
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 16,
                                        ),
                                      ),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          OutlineButton(
                                            onPressed: () {},
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                8,
                                              ),
                                            ),
                                            color: primaryColor,
                                            focusColor: primaryColor,
                                            child: Text(
                                              'Yes',
                                              style: paypalButtons,
                                            ),
                                          ),
                                          horizontalSpace20,
                                          OutlineButton(
                                            onPressed: () {},
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                8,
                                              ),
                                            ),
                                            color: primaryColor,
                                            focusColor: primaryColor,
                                            child: Text(
                                              'No',
                                              style: paypalButtons,
                                            ),
                                          ),
                                          // CheckboxListTile(
                                          //   title: const Text('Yes'),
                                          //   value: yesChecked,
                                          //   onChanged: (bool value) {
                                          //     setState(() {
                                          //       yesChecked = !yesChecked;
                                          //     });
                                          //   },
                                          //   secondary: const Icon(
                                          //     Icons.check,
                                          //   ),
                                          // ),
                                          // CheckboxListTile(
                                          //   title: const Text('No'),
                                          //   value: !yesChecked,
                                          //   onChanged: (bool value) {
                                          //     setState(() {
                                          //       yesChecked = !yesChecked;
                                          //     });
                                          //   },
                                          //   secondary: const Icon(
                                          //     Icons.check,
                                          //   ),
                                          // ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                onPressed: () {},
                              ),
                            ],
                          );
                          showCupertinoModalPopup(
                              context: context, builder: (context) => action);
                        },
                        child: Text(
                          'Write a review',
                        ),
                      ),
                      Text(
                        'Service for',
                      ),
                      verticalSpace10,
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 10.0,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.4,
                              height: 50,
                              child: OutlineButton(
                                child: Text(
                                  'Dog',
                                  style: TextStyle(
                                    color: primaryColor,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6.0),
                                  // side: BorderSide(
                                  //   color: primaryColor,
                                  // ),
                                ),
                                highlightColor: primaryColor,
                                borderSide: BorderSide(
                                  color: primaryColor,
                                ),
                                onPressed: () {
                                  print('on pressed');
                                },
                              ),
                            ),
                            horizontalSpace20,
                            Container(
                              width: MediaQuery.of(context).size.width * 0.4,
                              height: 50,
                              child: OutlineButton(
                                child: Text(
                                  'Cat',
                                  style: TextStyle(
                                    color: primaryColor,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6.0),
                                  // side: BorderSide(
                                  //   color: primaryColor,
                                  // ),
                                ),
                                highlightColor: primaryColor,
                                borderSide: BorderSide(
                                  color: primaryColor,
                                ),
                                onPressed: () {
                                  print('on pressed');
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      DefaultTabController(
                        length: 3, // length of tabs
                        initialIndex: 0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            Container(
                              child: TabBar(
                                labelColor: Colors.green,
                                unselectedLabelColor: Colors.black,
                                indicatorPadding: EdgeInsets.zero,
                                tabs: [
                                  Tab(text: 'Services'),
                                  Tab(text: 'Contact Details'),
                                  Tab(text: 'Ratings'),
                                ],
                              ),
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height *
                                  0.25, //height of TabBarView
                              decoration: BoxDecoration(
                                border: Border(
                                  top: BorderSide(
                                    color: Colors.grey,
                                    width: 0.5,
                                  ),
                                ),
                              ),
                              child: TabBarView(
                                children: <Widget>[
                                  servicesUI(),
                                  contactUI(),
                                  ratingsUI(context),
                                  // Container(
                                  //   child: Center(
                                  //     child: Text('Display Tab 4',
                                  //         style: TextStyle(
                                  //             fontSize: 22,
                                  //             fontWeight: FontWeight.bold)),
                                  //   ),
                                  // ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.40,
                child: Image.asset(
                  // serviceDetails['image'],
                  'assets/images/doctor.png',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Positioned(
              top: 10,
              left: 20,
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
            Positioned(
              top: 10,
              right: 20,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      print('show action scheet');
                      // showAdaptiveActionSheet(
                      //   context: context,
                      //   title: const Text('Share on Social Media'),
                      //   actions: <BottomSheetAction>[
                      //     BottomSheetAction(title: 'Item 1', onPressed: () {}),
                      //     // BottomSheetAction(title: 'Item 2', onPressed: () {}),
                      //     // BottomSheetAction(title: 'Item 3', onPressed: () {}),
                      //   ],
                      //   cancelAction: CancelAction(
                      //       title:
                      //           'Cancel'), // onPressed parameter is optional by default will dismiss the ActionSheet
                      // );
                      final action = CupertinoActionSheet(
                        title: Text(
                          "Share on Social Media",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        actions: [
                          CupertinoActionSheetAction(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/facebook-circle.png',
                                ),
                                horizontalSpace10,
                                Image.asset(
                                  'assets/images/insta-circle.png',
                                ),
                                horizontalSpace10,
                                Image.asset(
                                  'assets/images/twitter-circle.png',
                                ),
                              ],
                            ),
                            onPressed: () {},
                          ),
                        ],
                      );
                      showCupertinoModalPopup(
                          context: context, builder: (context) => action);
                    },
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          20,
                        ),
                        color: primaryColor,
                      ),
                      child: Icon(
                        Icons.share_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  horizontalSpace20,
                  // verticalSpace20,
                  // Container(
                  //   height: 40,
                  //   width: 40,
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(
                  //       20,
                  //     ),
                  //     color: primaryColor,
                  //   ),
                  //   child: Icon(
                  //     Icons.shopping_bag_outlined,
                  //     color: Colors.white,
                  //   ),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container ratingsUI(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              // mainAxisAlignment:
              //     MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Customer Reviews(10)',
                  style: tcard,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 8.0,
                      ),
                      // child: Text(
                      //   'More Help',
                      // ),
                      child: RichText(
                        text: TextSpan(
                          style: reviewsHelp,
                          children: [
                            TextSpan(
                              text: "More Help ",
                            ),
                            WidgetSpan(
                              child: Icon(
                                Icons.arrow_downward_rounded,
                                size: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // TODO ListVIEW here
          Container(
            height: 125,
            child: ListView(
              children: [
                ListTile(
                  title: Text(
                    'Posh Pows provides a great service!! All staff is very nice',
                  ),
                  subtitle: Text(
                    'John | 23 June 2020',
                  ),
                ),
                ListTile(
                  title: Text(
                    'Pows provides a great service!! All staff is very nice',
                  ),
                  subtitle: Text(
                    'John | 23 June 2020',
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, top: 4),
            child: GestureDetector(
              onTap: () {
                print('Redirect to reviews page');
                Navigator.of(context).pushNamed('reviews');
              },
              child: Text(
                'View more',
                style: taddpet,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container contactUI() {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment:
          //     MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpace10,
            Text(
              'Address',
              style: textfieldTitle,
            ),
            Text(
              'Main Street,121NY, New York City',
              style: titleStyle,
            ),
            verticalSpace10,
            Text(
              'Phone No.',
              style: textfieldTitle,
            ),
            Text(
              '0123-456789',
              style: titleStyle,
            ),
            verticalSpace10,
            Text(
              'Working Hours',
              style: textfieldTitle,
            ),
            Text(
              '10:00am- 06:00pm',
              style: titleStyle,
            ),
            verticalSpace10,
            Text(
              'Email Acddress',
              style: textfieldTitle,
            ),
            Text(
              'poshpaws@gmail.com',
              style: titleStyle,
            ),
            verticalSpace10,
          ],
        ),
      ),
    );
  }

  Container servicesUI() {
    return Container(
      child: ListView(
        // scrollDirection: Axis.horizontal,
        children: [
          verticalSpace10,
          Text('Available on'),
          verticalSpace10,
          Row(
            children: [
              horizontalSpace10,
              CircleAvatar(
                child: Image.asset(
                  'assets/images/whatsapp.png',
                ),
              ),
              horizontalSpace10,
              CircleAvatar(
                child: Image.asset(
                  'assets/images/skype.png',
                ),
              ),
              horizontalSpace10,
              CircleAvatar(
                child: Image.asset(
                  'assets/images/zoom.png',
                ),
              ),
            ],
          ),
          verticalSpace05,
          ListTile(
            title: Text('Website Link'),
            subtitle: Text(
              'https://caringclaws.com',
            ),
          ),
          ListTile(
            title: Text('Certificate'),
            subtitle: Text(
              'Pet Vet Certificate',
            ),
          ),
        ],
      ),
    );
  }
}
