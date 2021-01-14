import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:petblock/dummy/dummy_data.dart';
import 'package:petblock/enums/enums.dart';
import 'package:petblock/pages/shared/shared.dart';
import 'package:petblock/styles/petblock_app.dart';
import 'package:petblock/styles/style.dart';

class PetCareHome extends StatefulWidget {
  @override
  _PetCareHomeState createState() => _PetCareHomeState();
}

class _PetCareHomeState extends State<PetCareHome> {
  Completer<GoogleMapController> _controller = Completer();
  ViewState state = ViewState.Busy;
  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(
      37.42796133580664,
      -122.085749655962,
    ),
    zoom: 14.4746,
  );

  // static final CameraPosition _kLake = CameraPosition(
  //   bearing: 192.8334901395799,
  //   target: LatLng(37.43296265331129, -122.08832357078792),
  //   tilt: 59.440717697143555,
  //   zoom: 19.151926040649414,
  // );

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
          'Pet Care',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Stack(
        children: [
          CommonWidgets().getProgressBar(state),
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.35,
              child: GoogleMap(
                mapType: MapType.normal,
                initialCameraPosition: _kGooglePlex,
                compassEnabled: false,
                zoomControlsEnabled: false,
                myLocationEnabled: true,
                myLocationButtonEnabled: true,
                onMapCreated: (GoogleMapController controller) {
                  _controller.complete(controller);
                  setState(() {
                    state = ViewState.Idle;
                  });
                },
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.58,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20.0,
                      top: 30.0,
                      bottom: 5,
                    ),
                    child: Text(
                      "Pet Care",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  _servicesWidget(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container _servicesWidget() {
    return Container(
      // height: 180,
      // width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.50,
      child: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 5,
        crossAxisSpacing: 2,
        children: List.generate(
          serviceList.length,
          (i) {
            return InkWell(
              onTap: () {
                print(serviceList[i]);
                Navigator.of(context)
                    .pushNamed('pet-care-details', arguments: serviceList[i]);
              },
              child: Stack(
                children: [
                  Container(
                    width: 190,
                    child: Image.asset(
                      serviceList[i]['image'],
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
        ),
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
        children: List.generate(serviceList.length, (i) {
          return GestureDetector(
            onTap: () {
              // print(imageList[i]);
              // serviceList = imageList[i]['services'];
              // selectedPet = imageList[i];
              // setState(() {});
              Navigator.of(context)
                  .pushNamed('pet-details', arguments: imageList[i]);
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
    );
  }
}
