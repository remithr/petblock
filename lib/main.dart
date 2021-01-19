import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:petblock/pages/dashboard/appointment_details.dart';
import 'package:petblock/pages/edit-profile/edit-profile.dart';
import 'package:petblock/pages/pet-care/pet-care-home.dart';
import 'package:petblock/pages/pet-care/reviews.dart';
import 'package:petblock/pages/pet-care/services.dart';
import 'package:petblock/pages/pet-details/pet-details.dart';
import 'package:petblock/pages/pet-vet/pet-vet-home.dart';

import 'pages/add-pet/add-pet.dart';
import 'pages/pet-care/paypal.dart';
import 'pages/pet-care/pet-care-details.dart';
import 'pages/pet-vet/pet-vet-details.dart';
import 'pages/profile/profile.dart';
import 'pages/slider/slider-view.dart';
import 'styles/style.dart';
import 'pages/dashboard/dashboard_home.dart';
import 'pages/login/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // 39C7CE
        // primarySwatch: Colors.amber,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: appBackground,
      ),
      debugShowCheckedModeBanner: false,
      // home: MyHomePage(title: 'Flutter Demo Home Page'),
      home: DashBoard(),
      routes: {
        'slider': (context) => SliderViewPage(),
        'login': (context) => LoginPage(),
        'dashboard': (context) => DashBoard(),
        'add-pet': (context) => AddPet(),
        'profile': (context) => ProfilePage(),
        'edit-profile': (context) => EditProfilePage(),
        'appointment-details': (context) => AppointmentDetails(),
        'pet-details': (context) => PetDetails(),
        'pet-care-home': (context) => PetCareHome(),
        'pet-care-details': (context) => PetCareDetails(),
        'reviews': (context) => ReviewsPage(),
        'book-service': (context) => ServicesPage(),
        'paypal': (context) => PaypalPage(),
        'pet-vet-home': (context) => PetVetHome(),
        'pet-vet-details': (context) => PetVetDetailsPage(),
        // PetVetDetailsPage
      },
    );
  }
}
