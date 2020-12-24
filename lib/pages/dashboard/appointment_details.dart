import 'package:flutter/material.dart';
import 'package:petblock/styles/style.dart';

class AppointmentDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appointment =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    print(appointment);
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
          'Edit Profile',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Center(
            child: Stack(
              children: [
                Image.asset(
                  'assets/images/card-bg.png',
                  //width: MediaQuery.of(context).size.width * 0.9,
                ),
                Positioned(
                  bottom: 35,
                  left: 10,
                  child: Text(
                    appointment['title'],
                    style: titleStyleWhite,
                  ),
                ),
                Positioned(
                  bottom: 15,
                  left: 10,
                  child: Text(
                    appointment['time'],
                    style: textfieldTitleWhite,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 30.0,
              right: 30,
              top: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                verticalSpace10,
                Text(
                  'Service Provider',
                  style: textfieldTitle,
                ),
                verticalSpace05,
                Text(
                  appointment['service_provider'],
                  style: titleStyle,
                ),
                verticalSpace10,
                verticalSpace05,
                Text(
                  'Booking For',
                  style: textfieldTitle,
                ),
                verticalSpace05,
                Text(
                  appointment['pet_name'],
                  style: titleStyle,
                ),
                verticalSpace10,
                verticalSpace05,
                Text(
                  'Age',
                  style: textfieldTitle,
                ),
                verticalSpace05,
                Text(
                  appointment['age'],
                  style: titleStyle,
                ),
                verticalSpace10,
                verticalSpace05,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Breed',
                          style: textfieldTitle,
                        ),
                        verticalSpace05,
                        Text(
                          appointment['breed'],
                          style: titleStyle,
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Age',
                          style: textfieldTitle,
                        ),
                        verticalSpace05,
                        Text(
                          appointment['age'],
                          style: titleStyle,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('1'),
                Text('2'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
