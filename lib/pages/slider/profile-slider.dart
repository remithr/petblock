import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';
import 'package:petblock/styles/style.dart';

class ProfileSlider extends StatefulWidget {
  @override
  _ProfileSliderState createState() => _ProfileSliderState();
}

class _ProfileSliderState extends State<ProfileSlider> {
  List<Slide> slides = [];
  Function goToTab;
  int currentTab = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    slides.add(
      new Slide(
        title: "Select User Type",
        maxLineTitle: 2,
        styleTitle: sText,
        description:
            "Your pet. Our passion. Helping cats and dogs live better lives. Healthy pets are happy pets.",
        styleDescription: tdesc,
        marginDescription: EdgeInsets.only(
          left: 20.0,
          right: 20.0,
          top: 20.0,
          bottom: 70.0,
        ),
        pathImage: 'assets/images/slide-1.png',
        backgroundColor: twhite,
        onCenterItemPress: () {},
      ),
    );
    // slides.add(
    //   new Slide(
    //     title: "Pet Matching",
    //     styleTitle: sText,
    //     description: "If the pooch melts your heart, swipe right.",
    //     styleDescription: tdesc,
    //     marginDescription: EdgeInsets.only(
    //       left: 20.0,
    //       right: 20.0,
    //       top: 20.0,
    //       bottom: 70.0,
    //     ),
    //     backgroundColor: twhite,
    //     pathImage: 'assets/images/slide-2.png',
    //   ),
    // );
  }

  void onDonePress() {
    // Back to the first tab
    // this.goToTab(0);
    Navigator.of(context).pushReplacementNamed('login');
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
        Navigator.of(context).pushReplacementNamed('login');
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

  List<Widget> renderListCustomTabs() {
    List<Widget> tabs = new List();
    for (int i = 0; i < slides.length; i++) {
      Slide currentSlide = slides[i];
      tabs.add(Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Container(
          // margin: EdgeInsets.only(
          //   // bottom: 0.0,
          //   top: MediaQuery.of(context).size.height * 0.25,
          // ),
          child: ListView(
            children: <Widget>[
             Text(
                  currentSlide.title,
                  style: currentSlide.styleTitle,
                  textAlign: TextAlign.center,
                ),
                //margin: EdgeInsets.only(top: 20.0),
              //),
            ],
          ),
        ),
      ));
    }
    return tabs;
  }

  @override
  Widget build(BuildContext context) {
    return new IntroSlider(
      // List slides
      slides: this.slides,

      // Skip button
      // renderSkipBtn: this.renderSkipBtn(),
      // colorSkipBtn: Color(0x33ffcc5c),
      // highlightColorSkipBtn: Color(0xffffcc5c),

      // Next button
      renderNextBtn: this.renderNextBtn(),
      // highlightColorPrevBtn: Colors.transparent,
      // Done button
      renderDoneBtn: this.renderDoneBtn(),
      onDonePress: this.onDonePress,
      colorDoneBtn: Colors.transparent,
      //colorPrevBtn: primaryColor,
      // colorSkipBtn: primaryColor,
      //widthPrevBtn: 60,
      // borderRadiusPrevBtn: 30,
      widthDoneBtn: 120,
      isShowSkipBtn: false,
      //borderRadiusDoneBtn: 30,
      // widthPrevBtn: 50,

      // highlightColorDoneBtn: Colors.transparent,

      // Dot indicator
      colorDot: tgrey,
      sizeDot: 13.0,
      colorActiveDot: primaryColor,
      // typeDotAnimation: dotSliderAnimation.SIZE_TRANSITION,

      // Tabs
      listCustomTabs: this.renderListCustomTabs(),
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
