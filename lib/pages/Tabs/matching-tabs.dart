import 'package:flutter/material.dart';
import 'package:md2_tab_indicator/md2_tab_indicator.dart';

class PetMatchingTabs extends StatefulWidget {
  @override
  _PetMatchingTabsState createState() => _PetMatchingTabsState();
}

class _PetMatchingTabsState extends State<PetMatchingTabs> {
  @override
  Widget build(BuildContext context) {
    DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "MD2 Tab Indicator",
            style: TextStyle(color: Colors.black87),
          ),
          backgroundColor: Colors.white,
          bottom: TabBar(
            labelStyle: TextStyle(fontWeight: FontWeight.w700),
            indicatorSize: TabBarIndicatorSize.label,
            labelColor: Color(0xff1967d2),
            unselectedLabelColor: Color(0xff5f6368),
            isScrollable: true,
            indicator: MD2Indicator(
              indicatorHeight: 3,
              indicatorColor: Color(0xff1967d2),
            ),
            tabs: <Widget>[
              Tab(
                text: "Home",
              ),
              Tab(
                text: "Personal info",
              ),
              Tab(
                text: "Data & personalization",
              ),
              Tab(
                text: "Security",
              )
            ],
          ),
        ),
      ),
    );
  }
}
