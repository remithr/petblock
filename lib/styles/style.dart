import 'package:flutter/material.dart';
import 'package:petblock/styles/petblock_app.dart';

final sText = TextStyle(
  color: Color(0xff39C7CE),
  fontSize: 30.0,
  fontWeight: FontWeight.bold,
  fontFamily: 'RobotoMono',
);

final tdesc = TextStyle(
  color: Color(0xffA8A8A8),
  fontSize: 20.0,
  // fontStyle: FontStyle.italic,
  fontFamily: 'RobotoMono',
);

final paypalText = TextStyle(
  color: Color(0xffA8A8A8),
  fontSize: 16.0,
  // fontStyle: FontStyle.italic,
  fontWeight: FontWeight.w700,
  fontFamily: 'RobotoMono',
);

final cdesc = TextStyle(
  color: Color(0xffACA5A3),
  fontSize: 10.0,
  // fontStyle: FontStyle.italic,
  fontFamily: 'RobotoMono',
);

final titleStyle = TextStyle(
  color: Color(0xff000000),
  fontSize: 16.0,
  fontWeight: FontWeight.w700,
  fontFamily: 'RobotoMono',
);

final paypalTerms = TextStyle(
  color: Color(0xff000000),
  fontSize: 18.0,
  fontWeight: FontWeight.w400,
  fontFamily: 'RobotoMono',
);

final titleStyleWhite = TextStyle(
  color: Color(0xffffffff),
  fontSize: 16.0,
  fontWeight: FontWeight.bold,
  fontFamily: 'RobotoMono',
);

// final tabsStyle = TextStyle(
//   color: Color(0xff000000),
//   fontSize: 16.0,
//   fontWeight: FontWeight.bold,
//   fontFamily: 'RobotoMono',
// );

final greyedText = TextStyle(
  color: Colors.grey,
  fontSize: 14.0,
  fontFamily: 'RobotoMono',
);
final textfieldTitle = TextStyle(
  color: Color(0xff87999D),
  fontSize: 14.0,
  fontFamily: 'RobotoMono',
);

final textfieldTitleWhite = TextStyle(
  color: Color(0xffffffff),
  fontSize: 14.0,
  fontFamily: 'RobotoMono',
);
final taddpet = TextStyle(
  color: Color(0xff39C7CE),
  fontSize: 14.0,
  fontFamily: 'RobotoMono',
  fontWeight: FontWeight.w500,
);

final paypalButtons = TextStyle(
  color: Color(0xff39C7CE),
  fontSize: 16.0,
  fontFamily: 'RobotoMono',
  fontWeight: FontWeight.w500,
);

final reviewsHelp = TextStyle(
  color: Color(0xff39C7CE),
  fontSize: 12.0,
  fontFamily: 'RobotoMono',
  fontWeight: FontWeight.w500,
);

final noPets = TextStyle(
  color: Color(0xff39C7CE),
  fontSize: 25.0,
  fontWeight: FontWeight.bold,
  fontFamily: 'RobotoMono',
);

final tcard = TextStyle(
  color: Color(0xff000000),
  fontSize: 14.0,
  fontWeight: FontWeight.w500,
  fontFamily: 'RobotoMono',
);

final ipBoxDecoration = BoxDecoration(
  border: Border.all(
    color: primaryColor,
  ),
  borderRadius: BorderRadius.circular(10.0),
);

final upBoxDecoration = BoxDecoration(
  // border: Border.all(
  //   color: primaryColor,
  // ),
  color: Color(0xFFF9F9F9),
  borderRadius: BorderRadius.circular(10.0),
);

final unselected = Color(0xFFBDC1D8);
final appBackground = Color(0xFFFFFFFF);
final primaryColor = Color(0xff39C7CE);
final primaryColorLight = Color(0xFFEAF5F9);
final twhite = Color(0xffffffff);
final tgrey = Color(0xFFE5E5E5);
final upText = Color(0xFF87999D);

final verticalSpace05 = SizedBox(
  height: 5,
);
final verticalSpace10 = SizedBox(
  height: 10,
);
final verticalSpace20 = SizedBox(
  height: 20,
);
final verticalSpace40 = SizedBox(
  height: 40,
);

final horizontalSpace05 = SizedBox(
  width: 5,
);
final horizontalSpace10 = SizedBox(
  width: 10,
);
final horizontalSpace20 = SizedBox(
  width: 20,
);
final horizontalSpace40 = SizedBox(
  width: 40,
);

final boneIcon = Icon(
  PetblockApp.bone,
  color: primaryColor,
  size: 15,
);

final List<Map<String, dynamic>> imageList = [
  {
    "image": "assets/images/bowser.png",
    "name": "Bowser",
    "age": "2 years old",
    "gender": "male",
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
    "gender": "female",
    "services": [
      {
        "image": "assets/images/service-1.png",
        "name": "Posh Pows 2",
        "address": "American street, Main street",
        "distance": "2,5km",
        "meal": "4.5"
      },
      {
        "image": "assets/images/service-2.png",
        "name": "Enlighten Dogs 2",
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
    "gender": "female",
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
    "gender": "male",
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
    "gender": "male",
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
    "gender": "male",
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
    "gender": "male",
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
