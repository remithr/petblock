import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:petblock/dummy/dummy_data.dart';
import 'package:petblock/styles/petblock_app.dart';
import 'package:petblock/styles/style.dart';

class PetTrainerHome extends StatefulWidget {
  @override
  _PetTrainerHomeState createState() => _PetTrainerHomeState();
}

class _PetTrainerHomeState extends State<PetTrainerHome> {
  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(
      37.42796133580664,
      -122.085749655962,
    ),
    zoom: 14.4746,
  );
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
              color: arrowBackground,
            ),
            child: BackButton(
              color: Colors.black,
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Pet Trainer',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
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
              bottom: 0,
              left: 0,
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
                        'Pet Trainer',
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
          ],
        ),
      ),
    );
  }

  Container _servicesWidget() {
    return Container(
      // height: 180,
      // width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.40,
      child: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 5,
        crossAxisSpacing: 2,
        children: List.generate(
          petTrainerServices.length,
          (i) {
            return InkWell(
              onTap: () {
                print(petTrainerServices[i]);
                Navigator.of(context).pushNamed(
                  'pet-trainer-details',
                  arguments: petTrainerServices[i],
                );
              },
              child: Stack(
                children: [
                  Container(
                    width: 190,
                    child: Image.asset(
                      petTrainerServices[i]['image'],
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
                              petTrainerServices[i]['name'],
                              style: tcard,
                            ),
                            verticalSpace05,
                            Text(
                              petTrainerServices[i]['address'],
                              style: cdesc,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      PetblockApp.pin,
                                      size: 15,
                                      color: primaryColor,
                                    ),
                                    horizontalSpace05,
                                    Text(
                                      petTrainerServices[i]['distance'],
                                      style: serviceStyle,
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      PetblockApp.bone,
                                      size: 12,
                                      color: primaryColor,
                                    ),
                                    horizontalSpace05,
                                    Text(
                                      petTrainerServices[i]['meal'],
                                      style: serviceStyle,
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
}
