import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';
import 'package:petblock/pages/login/check-box.dart';
import 'package:petblock/pages/login/toggle-btn.dart';
import 'package:petblock/styles/style.dart';

class ProfileSlider extends StatefulWidget {
  @override
  _ProfileSliderState createState() => _ProfileSliderState();
}

class _ProfileSliderState extends State<ProfileSlider> {
  List<Slide> slides = [];
  Function goToTab;
  var userData;
  bool _checkVal = false;
  bool _valueCheck = false;
  int currentTab = 0;
  bool _toggled = false;
  String radioItem = '';
  String _currentSelectedValue;
  var _countries = [
    "India",
    "America",
    "China",
    "Japan",
    "South Africa",
    "Belgium",
    "Germany",
    "Ireland"
  ];

  var _states = [
    "Maharashtra",
    "Gujarat",
    "Rajasthan",
    "Uttar Pradesh",
    "Karnataka",
    "Kerala",
  ];

  var _city = [
    "Nashik",
    "Mumbai",
    "Panvel",
    "Igatpuri",
    "Pune",
    "Jalgaon",
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('Setting arguments $userData');
    slides.add(
      new Slide(
        title: "Select User Type",
        maxLineTitle: 2,
        styleTitle: pTitle,
        description:
            "Please fill the following information to create your profile",
        styleDescription: tdesc,
      ),
    );
    slides.add(
      new Slide(
        title: "Let's create your profile",
        maxLineTitle: 2,
        styleTitle: pTitle,
        description:
            "Please fill the following information to create your profile",
        styleDescription: tdesc,
      ),
    );

    slides.add(
      new Slide(
        title: "Add Location Details",
        maxLineTitle: 2,
        styleTitle: pTitle,
        description:
            "Please fill the following information to create your profile",
        styleDescription: tdesc,
      ),
    );

    slides.add(
      new Slide(
        title: "Calender Sync",
        maxLineTitle: 2,
        styleTitle: pTitle,
        description:
            "Please fill the following information to create your profile",
        styleDescription: tdesc,
      ),
    );
  }

  void onDonePress() {
    // Back to the first tab
    // this.goToTab(0);
    Navigator.of(context).pushReplacementNamed('match-');
  }

  void onTabChangeCompleted(index) {
    // Index of current tab is focused
    print('current index $index');
    currentTab = index;
  }

  Widget renderNextBtn() {
    return RawMaterialButton(
      onPressed: () {
        currentTab++;
        this.goToTab(currentTab);
      },
      elevation: 2.0,
      fillColor: primaryColor,
      child: Icon(
        Icons.navigate_next,
        color: twhite,
        size: 35.0,
      ),
      padding: EdgeInsets.all(10.0),
      shape: CircleBorder(),
    );
  }

  Widget renderDoneBtn() {
    return RawMaterialButton(
      onPressed: () {
        //Navigator.of(context).pushReplacementNamed('match-search');
        Navigator.of(context).pushReplacementNamed('pet-matching');
      },
      elevation: 2.0,
      fillColor: primaryColor,
      child: Text(
        'Get Started',
        style: TextStyle(
          color: twhite,
          fontSize: 16.0,
        ),
      ),
    );
  }

  Widget renderSkipBtn() {
    return Icon(
      Icons.skip_next,
      color: Color(0xffffcc5c),
    );
  }

  List<Widget> renderListCustomTabs(data) {
    print('data inside custom tabs');
    if (data != null) {
      print(data['facebook']);
    }
    List<Widget> tabs = new List();
    for (int i = 0; i < slides.length; i++) {
      Slide currentSlide = slides[i];
      if (i == 0) {
        tabs.add(
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Container(
              margin: EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: ListView(
                children: <Widget>[
                  verticalSpace40,
                  Text(
                    currentSlide.title,
                    style: currentSlide.styleTitle,
                    textAlign: TextAlign.start,
                  ),
                  verticalSpace20,
                  Container(
                    child: Text(
                      currentSlide.description,
                      style: currentSlide.styleDescription,
                      textAlign: TextAlign.start,
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  verticalSpace40,
                  _buildCards('petOwner'),
                  verticalSpace40,
                  _buildCards('servicePro'),
                  if (data != null) verticalSpace20,
                  if (data != null) _buildDivider(),
                  if (data != null) verticalSpace20,
                  if (data != null)
                    SizedBox(
                      height: 54,
                      child: RaisedButton(
                        onPressed: () {
                          currentTab++;
                          this.goToTab(currentTab);
                          // var args = {'facebook': true};
                          // Navigator.of(context).pushReplacementNamed(
                          //     'create-user',
                          //     arguments: args);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: Image.asset(
                                "assets/icons/facebook.png",
                              ),
                            ),
                            Text("Sign In with Facebook",
                                style: TextStyle(fontSize: 18)),
                          ],
                        ),
                        color: fbColor,
                        textColor: twhite,
                        shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(10),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
        );
      } else if (i == 1) {
        tabs.add(
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Container(
              margin: EdgeInsets.only(
                // bottom: 0.0,
                left: 20,
                right: 20,
              ),
              child: ListView(
                children: <Widget>[
                  verticalSpace40,
                  Text(
                    currentSlide.title,
                    style: currentSlide.styleTitle,
                    textAlign: TextAlign.start,
                  ),
                  verticalSpace20,
                  Container(
                    child: Text(
                      currentSlide.description,
                      style: currentSlide.styleDescription,
                      textAlign: TextAlign.start,
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  //_addTextLable('Email Address'),
                  verticalSpace10,
                  buildTextField('Full Name*'),
                  verticalSpace40,
                  buildTextField('Email Id*'),
                  verticalSpace40,
                  buildTextField('Contact Number*'),
                  verticalSpace40,
                  buildTextField('Password*'),
                  verticalSpace40,
                  ToggleButton(),
                ],
              ),
            ),
          ),
        );
      } else if (i == 2) {
        tabs.add(
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Container(
              margin: EdgeInsets.only(
                // bottom: 0.0,
                left: 20,
                right: 20,
              ),
              child: ListView(
                children: <Widget>[
                  verticalSpace40,
                  Text(
                    currentSlide.title,
                    style: currentSlide.styleTitle,
                    textAlign: TextAlign.start,
                  ),
                  verticalSpace20,
                  Container(
                    child: Text(
                      currentSlide.description,
                      style: currentSlide.styleDescription,
                      textAlign: TextAlign.start,
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  //_addTextLable('Email Address'),
                  verticalSpace10,
                  _buildDropdown('country'),
                  verticalSpace40,
                  _buildDropdown('state'),
                  verticalSpace40,
                  _buildDropdown('city'),
                  verticalSpace40,
                  buildTextField('Address*'),
                  verticalSpace40,
                  _buildCheckBtn(),
                ],
              ),
            ),
          ),
        );
      } else if (i == 3) {
        tabs.add(
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Container(
              margin: EdgeInsets.only(
                // bottom: 0.0,
                left: 20,
                right: 20,
              ),
              child: ListView(
                children: <Widget>[
                  verticalSpace40,
                  Stack(
                    children: [
                      Text(
                        currentSlide.title,
                        style: currentSlide.styleTitle,
                        //textAlign: TextAlign.start,
                      ),
                      Positioned(
                        right: 25,
                        //top:15,
                        child: Text(
                          'skip',
                          style: TextStyle(
                            color: primaryColor,
                            fontSize: 14.0,
                            decoration: TextDecoration.underline,
                          ),
                          textAlign: TextAlign.end,
                        ),
                      )
                    ],
                  ),
                  verticalSpace20,
                  Container(
                    child: Text(
                      currentSlide.description,
                      style: currentSlide.styleDescription,
                      textAlign: TextAlign.start,
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  verticalSpace40,
                  _buildCalendarCards('outlook'),
                  verticalSpace40,
                  _buildCalendarCards('gsuite'),
                  verticalSpace40,
                  _buildCalendarCards('icalendar'),
                  //_addTextLable('Email Address'),
                  // verticalSpace10,
                  // _buildDropdown('country'),
                  // verticalSpace40,
                  // _buildDropdown('state'),
                  // verticalSpace40,
                  // _buildDropdown('city'),
                  // verticalSpace40,
                  // buildTextField('Address*'),
                  // verticalSpace40,
                  // _buildCheckBtn(),
                ],
              ),
            ),
          ),
        );
      }
    }
    return tabs;
  }

  _buildDivider() {
    return Row(children: <Widget>[
      Expanded(
        child: Padding(
          padding: const EdgeInsets.only(left: 18.0, right: 18.0),
          child: Divider(color: Colors.black),
        ),
      ),
      Text("OR SIGNUP WITH"),
      Expanded(
        child: Padding(
          padding: const EdgeInsets.only(left: 18.0, right: 18.0),
          child: Divider(color: Colors.black),
        ),
      ),
    ]);
  }

  _buildCalendarCards(val) {
    double swidth = MediaQuery.of(context).size.width;
    print('width $swidth');
    double sheight = MediaQuery.of(context).size.height;
    print('height $sheight');
    return Center(
      child: CheckboxScreen(),
    );
  }

  _buildCheckBtn() {
    return Row(
      children: <Widget>[
        SizedBox(
          width: 10,
        ),
        Checkbox(
          checkColor: Colors.greenAccent,
          activeColor: Colors.red,
          value: _checkVal,
          onChanged: (bool value) {
            print('on click val $value');
            setState(() {
              _checkVal = value;
            });
          },
        ),
        Text(
          'I agree to all terms and conditions ',
          style: TextStyle(fontSize: 17.0),
        ),
      ],
    );
  }

  _buildDropdown(val) {
    return FormField<String>(
      builder: (FormFieldState<String> state) {
        return InputDecorator(
          baseStyle: TextStyle(backgroundColor: greyF9),
          decoration: InputDecoration(
            //labelStyle: textStyle,
            filled: true,
            fillColor: greyF9,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(12.0)),
              borderSide: BorderSide(color: greyF9, width: 1),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              borderSide: BorderSide(
                color: greyF9,
              ),
            ),
            errorStyle: TextStyle(color: Colors.redAccent, fontSize: 16.0),
          ),
          isEmpty: _currentSelectedValue == '',
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              hint: Text(val),
              value: _currentSelectedValue,
              isDense: true,
              onChanged: (String newValue) {
                setState(() {
                  _currentSelectedValue = newValue;
                  state.didChange(newValue);
                });
              },
              items: val == 'country'
                  ? _countries.map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList()
                  : val == 'state'
                      ? _states.map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList()
                      : _city.map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
            ),
          ),
        );
      },
    );
  }

  _buildCards(val) {
    return SizedBox(
      child: Card(
        shape: RoundedRectangleBorder(
            side: new BorderSide(color: primaryColor, width: 2.0),
            borderRadius: BorderRadius.circular(10.0)),
        child: new Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            new Container(
              margin: sliderImage,
              width: 120.0,
              height: 120.0,
              decoration: new BoxDecoration(
                shape: BoxShape.circle,
                //border: Border.all(color: Colors.black),
                image: DecorationImage(
                  image: new ExactAssetImage(val == 'petOwner'
                      ? 'assets/images/petowner.png'
                      : 'assets/images/serviceprovider.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Text(
                val == 'petOwner' ? 'Pet Owner' : 'Service Provider',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }

  TextField buildTextField(val) {
    return TextField(
      obscureText: val == "Password*" ? true : false,
      autocorrect: true,
      decoration: InputDecoration(
        hintText: val,
        hintStyle: TextStyle(color: Colors.grey),
        filled: true,
        fillColor: greyF9,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12.0)),
          borderSide: BorderSide(color: greyF9, width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          borderSide: BorderSide(
            color: greyF9,
          ),
        ),
      ),
    );
  }

  _addTextLable(val) {
    if (val == 'Invalid Password') {
      return Text(
        val,
        textAlign: TextAlign.right,
        style: TextStyle(
            fontSize: 16.0, fontWeight: FontWeight.normal, color: Colors.red),
      );
    }
    if (val == 'ForgotPassword') {
      return Text(
        val,
        textAlign: TextAlign.right,
        style: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.normal,
          decoration: TextDecoration.underline,
        ),
      );
    } else {
      return Text(
        val,
        textAlign: TextAlign.left,
        style: lgText,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    userData =
        ModalRoute.of(context).settings.arguments as Map<String, dynamic>;
    return IntroSlider(
      // List slides
      slides: this.slides,
      renderNextBtn: this.renderNextBtn(),
      renderDoneBtn: this.renderDoneBtn(),
      onDonePress: this.onDonePress,
      colorDoneBtn: Colors.transparent,
      widthDoneBtn: 120,
      isShowSkipBtn: false,
      colorDot: tgrey,
      sizeDot: 13.0,
      colorActiveDot: primaryColor,
      listCustomTabs: this.renderListCustomTabs(userData),
      backgroundColorAllSlides: Colors.white,
      refFuncGoToTab: (refFunc) {
        this.goToTab = refFunc;
      },

      // Show or hide status bar
      shouldHideStatusBar: true,

      // On tab change completed
      onTabChangeCompleted: this.onTabChangeCompleted,
    );
  }
}
