import 'package:flutter/material.dart';
import 'package:petblock/styles/petblock_app.dart';
import 'package:petblock/styles/style.dart';
import 'package:petblock/widgets/service_stepper.dart';

class PetTrainerBookingPage extends StatefulWidget {
  @override
  _PetTrainerBookingPageState createState() => _PetTrainerBookingPageState();
}

class _PetTrainerBookingPageState extends State<PetTrainerBookingPage> {
  bool paypal = false;
  int currentStep = 0;
  bool complete = false;
  PetblockStepState state;
  List<PetblockStep> steps = [
    PetblockStep(
      title: const Text('Selected Services'),
      isActive: true,
      state: PetblockStepState.stepOne,
      content: Column(
        children: [
          //TODO ADD 2 rows, one with total and other with BUTTON HERE
          CheckboxListTile(
            value: true,
            onChanged: (value) {
              print(value);
            },
            isThreeLine: true,
            title: Text(
              'Healthy Food',
            ),
            subtitle: Text(
              'Time Required 1 Month \n \$10', //$dollar
            ),
            secondary: ClipOval(
              child: Image.asset(
                'assets/images/healthy_food.png',
              ),
            ),
          ),
          CheckboxListTile(
            value: true,
            onChanged: (value) {
              print(value);
            },
            isThreeLine: true,
            title: Text(
              'General Behaviour',
            ),
            subtitle: Text(
              'Time Required 1 Month \n \$10', //$dollar
            ),
            secondary: ClipOval(
              child: Image.asset('assets/images/general_behaviour.png'),
            ),
          ),
        ],
      ),
    ),
    PetblockStep(
      isActive: false,
      state: PetblockStepState.stepTwo,
      title: const Text('Book'),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text(
            'Pet',
            style: textfieldTitle,
          ),
          verticalSpace05,
          Container(
            decoration: ipBoxDecoration,
            child: TextFormField(
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(
                  top: 14.0,
                ),
                suffixIcon: IconButton(
                  icon: Icon(
                    Icons.keyboard_arrow_down,
                  ),
                  onPressed: () {
                    print('Name pressed');
                  },
                ),
              ),
            ),
          ),
          verticalSpace10,
          Container(
            child: Row(
              children: [
                // Text('Species'),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Species',
                        style: textfieldTitle,
                      ),
                      verticalSpace05,
                      Container(
                        // width: MediaQuery.of(context).size.width,
                        decoration: ipBoxDecoration,
                        child: TextFormField(
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(
                              top: 14.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                horizontalSpace05,
                // Text('Breed'),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Breed',
                        style: textfieldTitle,
                      ),
                      verticalSpace05,
                      Container(
                        // width: MediaQuery.of(context).size.width,
                        decoration: ipBoxDecoration,
                        child: TextFormField(
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(
                              top: 14.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          verticalSpace10,
          Text(
            'Age',
            style: textfieldTitle,
          ),
          verticalSpace05,
          Container(
            decoration: ipBoxDecoration,
            child: TextFormField(
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(
                  top: 14.0,
                ),
                suffixIcon: IconButton(
                  icon: Icon(
                    Icons.keyboard_arrow_down,
                  ),
                  onPressed: () {
                    print('Name pressed');
                  },
                ),
              ),
            ),
          ),
          verticalSpace10,
          Text(
            'What is the main behaviour problem or complaint?',
            style: textfieldTitle,
          ),
          verticalSpace05,
          Container(
            decoration: ipBoxDecoration,
            child: TextFormField(
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(
                  top: 14.0,
                ),
              ),
            ),
          ),
          verticalSpace10,
          Text(
            'Has the Problem changed in frequency or intensity?',
            style: textfieldTitle,
          ),
          verticalSpace05,
          Container(
            decoration: ipBoxDecoration,
            child: TextFormField(
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(
                  top: 14.0,
                ),
              ),
            ),
          ),
          verticalSpace10,
          Text(
            'Does your dog have any allergies?',
            style: textfieldTitle,
          ),
          verticalSpace05,
          Container(
            decoration: ipBoxDecoration,
            child: TextFormField(
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(
                  top: 14.0,
                ),
              ),
            ),
          ),
          verticalSpace10,
          Text(
            'Has your dog bitten another dog?',
            style: textfieldTitle,
          ),
          Row(
            children: [
              // Text('Species'),
              Expanded(
                child: Container(
                  // width: MediaQuery.of(context).size.width,
                  decoration: ipBoxDecoration,
                  child: TextFormField(
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(
                        top: 14.0,
                      ),
                      hintText: ' Yes',
                    ),
                  ),
                ),
              ),
              horizontalSpace05,
              // Text('Breed'),
              Expanded(
                child: Container(
                  // width: MediaQuery.of(context).size.width,
                  decoration: ipBoxDecoration,
                  child: TextFormField(
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(
                        top: 14.0,
                      ),
                      hintText: ' No',
                    ),
                  ),
                ),
              ),
            ],
          ),
          verticalSpace10,
          Text(
            'Appointment Date',
            style: textfieldTitle,
          ),
          verticalSpace05,
          Container(
            decoration: ipBoxDecoration,
            child: TextFormField(
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(
                  top: 14.0,
                ),
                suffixIcon: IconButton(
                  icon: Icon(
                    PetblockApp.calendar,
                  ),
                  onPressed: () {
                    print('Name pressed');
                  },
                ),
              ),
            ),
          ),
          verticalSpace10,
          Text(
            'Appointment Time',
            style: textfieldTitle,
          ),
          verticalSpace05,
          Container(
            decoration: ipBoxDecoration,
            child: TextFormField(
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(
                  top: 14.0,
                ),
                suffixIcon: IconButton(
                  icon: Icon(
                    Icons.access_time,
                  ),
                  onPressed: () {
                    print('Name pressed');
                  },
                ),
              ),
            ),
          ),
          verticalSpace10,
        ],
      ),
    ),
    PetblockStep(
      state: PetblockStepState.stepThree,
      title: const Text('Payment'),
      // subtitle: const Text("Error!"),
      content: Column(
        children: [
          verticalSpace10,
          Container(
            height: 100,
            decoration: BoxDecoration(
              border: Border.all(color: tgrey, width: 2.0),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
              child: ListTile(
                onTap: () {
                  print('PayPal email tapped');
                },
                leading: Image.asset(
                  'assets/icons/paypal.png',
                ),
                title: Text('Paypal Email'),
                subtitle: Text('paypal@user.com'),
                trailing: Icon(
                  Icons.check_box,
                ),
              ),
            ),
          ),
          verticalSpace10,
          Container(
            height: 100,
            decoration: BoxDecoration(
              border: Border.all(color: tgrey, width: 2.0),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
              child: ListTile(
                onTap: () {
                  print('Store Address tapped');
                },
                leading: Image.asset(
                  'assets/icons/scart.png',
                ),
                title: Text(
                  'Store Address',
                ),
                // subtitle: Text('paypal@user.com'),
                trailing: Icon(
                  Icons.check_box,
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  ];
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
          'Service Book',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: PetblockStepper(
              steps: steps,
              type: PetblockStepperType.horizontal,
              currentStep: currentStep,
              onStepContinue: next,
              onStepTapped: (step) => goTo(step),
              onStepCancel: cancel,
            ),
          ),
        ],
      ),
    );
  }

  next() {
    currentStep + 1 != steps.length
        ? goTo(currentStep + 1)
        : setState(() => complete = true);
    if (complete) {
      print('complete');
      Navigator.of(context).pushNamed('paypal');
    }
  }

  cancel() {
    if (currentStep > 0) {
      goTo(currentStep - 1);
    }
  }

  goTo(int step) {
    print(step);
    if (step == 1) {
      state = PetblockStepState.stepOne;
    } else if (step == 2) {
      state = PetblockStepState.stepTwo;
    } else {
      state = PetblockStepState.stepThree;
    }
    print(step);
    setState(() {
      currentStep = step;
      // PetblockStepState.s
    });
  }

  //
  CheckboxListTile servicesCheckboxList(Map<String, dynamic> params) {
    return CheckboxListTile(
      value: true,
      onChanged: (value) {
        print(value);
      },
      isThreeLine: true,
      title: Text(
        params['name'],
      ),
      subtitle: Text(
        params['desc'], //$dollar
      ),
      secondary: ClipOval(
        child: Image.asset(
          params['avatar'],
        ),
      ),
    );
  }
}
