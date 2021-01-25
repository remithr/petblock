import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:petblock/dummy/dummy_data.dart';
import 'package:petblock/styles/petblock_app.dart';
import 'package:petblock/styles/style.dart';

class PetFriendlyHomePage extends StatefulWidget {
  @override
  _PetFriendlyHomePageState createState() => _PetFriendlyHomePageState();
}

class _PetFriendlyHomePageState extends State<PetFriendlyHomePage> {
  @override
  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(
      37.42796133580664,
      -122.085749655962,
    ),
    zoom: 14.4746,
  );
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
        title: Padding(
          padding: const EdgeInsets.only(top: 1.0),
          child: Container(
            height: 55,
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                ),
                hintText: 'Search Places',
                suffixIcon: Icon(
                  Icons.search,
                ),
              ),
            ),
          ),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Positioned(
              top: 50,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.4,
                width: MediaQuery.of(context).size.width,
                // color: Colors.black,
                child: GoogleMap(
                  mapType: MapType.normal,
                  initialCameraPosition: _kGooglePlex,
                  compassEnabled: false,
                  zoomControlsEnabled: false,
                  myLocationEnabled: true,
                  myLocationButtonEnabled: true,
                  onMapCreated: (GoogleMapController controller) {
                    _controller.complete(controller);
                    // setState(() {
                    //   state = ViewState.Idle;
                    // });
                  },
                ),
              ),
            ),
            Positioned(
              top: 300,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.5,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 15.0,
                        left: 15,
                      ),
                      child: Text(
                        'Pet Friendly Restaurants',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    _servicesWidget(),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                horizontalSpace05,
                raisedButton('Restaurants'),
                horizontalSpace05,
                outlineButton('Resorts'),
                horizontalSpace05,
                outlineButton('Hotels'),
                horizontalSpace05,
                outlineButton('Parks'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  RaisedButton raisedButton(label) {
    return RaisedButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          15,
        ),
      ),
      color: primaryColor,
      onPressed: () {
        print('pressed');
      },
      child: Text(
        label,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }

  OutlineButton outlineButton(String label) {
    return OutlineButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          15,
        ),
      ),
      onPressed: () {
        print('pressed');
      },
      child: Text(
        label,
        style: TextStyle(
          color: primaryColor,
        ),
      ),
    );
  }

  Container _servicesWidget() {
    return Container(
      padding: EdgeInsets.only(
        top: 5,
      ),
      // height: 180,
      // width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.30,
      // child: GridView.count(
      //   crossAxisCount: 2,
      //   mainAxisSpacing: 5,
      //   crossAxisSpacing: 2,
      //   children: List.generate(
      //     restaurantList.length,
      //     (i) {
      //       return ;
      //     },
      //   ),
      // ),
      child: ListView.builder(
        itemCount: restaurantList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int i) {
          return InkWell(
            onTap: () {
              print(restaurantList[i]);
              Navigator.of(context).pushNamed(
                'pet-care-details',
                arguments: restaurantList[i],
              );
            },
            child: Stack(
              children: [
                Container(
                  width: 190,
                  child: Image.asset(
                    restaurantList[i]['image'],
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                  bottom: 30,
                  left: 20,
                  child: Container(
                    height: 70,
                    width: 150,
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
                            restaurantList[i]['name'],
                            style: tcard,
                          ),
                          Text(
                            restaurantList[i]['address'],
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
                                    restaurantList[i]['distance'],
                                    style: cdesc,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  // Icon(PetblockApp.bone),
                                  Text(
                                    restaurantList[i]['meal'],
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
      ),
    );
  }
}
