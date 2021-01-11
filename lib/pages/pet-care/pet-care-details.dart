import 'package:flutter/material.dart';
import 'package:petblock/styles/style.dart';

class PetCareDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var serviceDetails =
        ModalRoute.of(context).settings.arguments as Map<String, dynamic>;
    print(serviceDetails);
    return Scaffold(
      // appBar: AppBar(
      //   leading: Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: Container(
      //       // color: unselected,
      //       decoration: BoxDecoration(
      //         borderRadius: BorderRadius.circular(
      //           10,
      //         ),
      //         // color: unselected,
      //       ),
      //       child: BackButton(
      //         color: Colors.black,
      //       ),
      //     ),
      //   ),
      //   backgroundColor: Colors.transparent,
      //   elevation: 0,
      //   // title: Text(
      //   //   'Pet Care',
      //   //   style: TextStyle(
      //   //     color: Colors.black,
      //   //   ),
      //   // ),
      // ),
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
                          Expanded(
                            child: Text(
                              "Posh Paws",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 20.0,
                                right: 20.0,
                              ),
                              child: RaisedButton(
                                onPressed: () {},
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
                      Text(
                        'Write a review',
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
                                tabs: [
                                  Tab(text: 'Services'),
                                  Tab(text: 'Contact Details'),
                                  Tab(text: 'Ratings'),
                                ],
                              ),
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height *
                                  0.2, //height of TabBarView
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
                                  Container(
                                    child: ListView(
                                      children: [
                                        ListTile(
                                          leading: CircleAvatar(
                                            // child: Image.asset(
                                            //   'assets/images/nail.png',
                                            // ),
                                            backgroundImage: AssetImage(
                                              'assets/images/nail.png',
                                            ),
                                          ),
                                          title: Text(
                                            'Nail Trimming',
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          subtitle: Text(
                                            'Time Required 1 hr',
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        ListTile(
                                          leading: CircleAvatar(
                                            // child: Image.asset(
                                            //   'assets/images/nail.png',
                                            // ),
                                            backgroundImage: AssetImage(
                                              'assets/images/ears.png',
                                            ),
                                          ),
                                          title: Text(
                                            'Ears Clean',
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          subtitle: Text(
                                            'Time Required 1 hr',
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Center(
                                      child: Text(
                                        'Contact Details',
                                        style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Center(
                                      child: Text(
                                        'Ratings',
                                        style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
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
                  'assets/images/pet-details.png',
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
                  Container(
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
                  horizontalSpace20,
                  // verticalSpace20,
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        20,
                      ),
                      color: primaryColor,
                    ),
                    child: Icon(
                      Icons.shopping_bag_outlined,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
