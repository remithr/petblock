import 'package:flutter/material.dart';
import 'package:petblock/styles/style.dart';
import 'package:petblock/widgets/service_stepper.dart';

class ServicesPage extends StatefulWidget {
  @override
  _ServicesPageState createState() => _ServicesPageState();
}

class _ServicesPageState extends State<ServicesPage> {
  List<PetblockStep> steps = [
    PetblockStep(
      title: const Text('Selected Services'),
      isActive: true,
      state: PetblockStepState.stepOne,
      content: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(labelText: 'Email Address'),
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Password'),
          ),
        ],
      ),
    ),
    PetblockStep(
      isActive: false,
      state: PetblockStepState.stepTwo,
      title: const Text('Book'),
      content: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(labelText: 'Home Address'),
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Postcode'),
          ),
        ],
      ),
    ),
    PetblockStep(
      state: PetblockStepState.stepThree,
      title: const Text('Payment'),
      // subtitle: const Text("Error!"),
      content: Column(
        children: <Widget>[
          CircleAvatar(
            backgroundColor: Colors.red,
          )
        ],
      ),
    ),
  ];

  int currentStep = 0;

  bool complete = false;

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
  }

  cancel() {
    if (currentStep > 0) {
      goTo(currentStep - 1);
    }
  }

  goTo(int step) {
    print(step);
    setState(() {
      currentStep = step;
      // PetblockStepState.s
    });
  }
}
