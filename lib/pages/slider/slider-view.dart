import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';
import 'package:petblock/styles/style.dart';

class SliderViewPage extends StatefulWidget {
  @override
  _SliderViewPageState createState() => _SliderViewPageState();
}

class _SliderViewPageState extends State<SliderViewPage> {
  List<Slide> slides = [];
  Function goToTab;
  int currentTab = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    slides.add(
      new Slide(
        title: "Pet Vet",
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
    slides.add(
      new Slide(
        title: "Pet Matching",
        styleTitle: sText,
        description: "If the pooch melts your heart, swipe right.",
        styleDescription: tdesc,
        marginDescription: EdgeInsets.only(
          left: 20.0,
          right: 20.0,
          top: 20.0,
          bottom: 70.0,
        ),
        backgroundColor: twhite,
        pathImage: 'assets/images/slide-2.png',
      ),
    );
    slides.add(
      new Slide(
        title: "Pet Care",
        styleTitle: sText,
        description:
            "The fur is Our Favorite Accessory.All the things that your pet deserves.",
        styleDescription: tdesc,
        marginDescription: EdgeInsets.only(
          left: 20.0,
          right: 20.0,
          top: 20.0,
          bottom: 70.0,
        ),
        pathImage: 'assets/images/slide-3.png',
        backgroundColor: twhite,
        maxLineTextDescription: 3,
      ),
    );
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
          margin: EdgeInsets.only(
            // bottom: 0.0,
            top: MediaQuery.of(context).size.height * 0.25,
          ),
          child: ListView(
            children: <Widget>[
              GestureDetector(
                child: Image.asset(
                  currentSlide.pathImage,
                  width: 200.0,
                  height: 200.0,
                  fit: BoxFit.contain,
                ),
              ),
              Container(
                child: Text(
                  currentSlide.title,
                  style: currentSlide.styleTitle,
                  textAlign: TextAlign.center,
                ),
                margin: EdgeInsets.only(top: 20.0),
              ),
              Container(
                child: Text(
                  currentSlide.description,
                  style: currentSlide.styleDescription,
                  textAlign: TextAlign.center,
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                ),
                margin: EdgeInsets.only(
                  top: 20.0,
                  left: 40,
                  right: 40,
                ),
              ),
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
      listCustomTabs: this.renderListCustomTabs(),
      backgroundColorAllSlides: Colors.white,
      refFuncGoToTab: (refFunc) {
        this.goToTab = refFunc;
      },
      shouldHideStatusBar: true,
      onTabChangeCompleted: this.onTabChangeCompleted,
    );
  }
}
