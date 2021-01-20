import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:petblock/styles/style.dart';

final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];

class PetMatching extends StatefulWidget {
  @override
  _PetMatchingState createState() => _PetMatchingState();
}

class _PetMatchingState extends State<PetMatching> {
  int _current = 0;

  _buildSlider() {
    return CarouselSlider.builder(
      options: CarouselOptions(
          aspectRatio: 1.5,
          enlargeCenterPage: false,
          viewportFraction: 1,
          onPageChanged: (index, reason) {
            setState(() {
              _current = index;
            });
          }),
      itemCount: imgList.length,
      itemBuilder: (context, index) {
        final int first = index * 2;
        final int second = first + 1;
        return Row(
          children: [first].map((idx) {
            return Expanded(
              flex: 1,
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Center(
                      child: Image.asset(
                        'assets/images/dog1.png',
                        fit: BoxFit.cover,
                        width: 1000,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    left: 10,
                    right: 10,
                    child: InkWell(
                      onTap: () {
                        //Navigator.of(context).pushNamed('chat-list');
                        Navigator.of(context).pushNamed('message');
                      },
                      child: SizedBox(
                        height: 100,
                        width: MediaQuery.of(context).size.width,
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 18.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                verticalSpace10,
                                Text(
                                  'Maxi',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700),
                                ),
                                verticalSpace10,
                                Text(
                                  'Pet of Sophia Merchant',
                                  style: TextStyle(fontSize: 12),
                                ),
                                verticalSpace10,
                                Text(
                                  'Main Street New York',
                                  style: TextStyle(fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: Text('Multiple item in one slide demo')),
      body: Padding(
        padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Ink(
                  decoration: ShapeDecoration(
                    color: tgrey,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                  ),
                  child: IconButton(
                    icon: Icon(Icons.arrow_back),
                    color: Colors.black,
                    onPressed: () {},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Text(
                    'Pet Matching',
                    style: pTitle,
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.search),
                  color: Colors.black,
                  onPressed: () {
                    Navigator.of(context).pushNamed('match-search');
                  },
                ),
              ],
            ),
            verticalSpace10,
            Text(
              'Recent Matches',
              textAlign: TextAlign.left,
              style: petMatching,
            ),
            Row(
              children: [],
            ),
            verticalSpace10,
            Container(
              child: Column(
                children: [
                  _buildSlider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: imgList.map((url) {
                      int index = imgList.indexOf(url);
                      return Container(
                        width: 12.0,
                        height: 12.0,
                        margin: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 2.0),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: _current == index
                                ? primaryColor //Color.fromRGBO(0, 0, 0, 0.9)
                                : greyA8 //Color.fromRGBO(0, 0, 0, 0.4),
                            ),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
            Text(
              'Invite History',
              textAlign: TextAlign.left,
              style: petMatching,
            ),
            verticalSpace10,
            Row(
              children: [
                Text('Sent Request'),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Text('Received Request'),
                ),
              ],
            ),
            verticalSpace10,
            _buildSlidable('1st'),
            verticalSpace10,
            _buildSlidable('2nd'),
            verticalSpace10,
            _buildSlidable('3rd'),
          ],
        ),
      ),
    );
  }

  _buildSlidable(val) {
    return Slidable(
      actionPane: SlidableDrawerActionPane(),
      //actionExtentRatio: 0.25,
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: greyA8,
              width: 1.0,
            ),
          ),
        ),
        //color: Colors.white,
        child: ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/images/dog1.png'),
          ),
          title: Text('Jill', style: matchTxt),
          subtitle: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalSpace5,
              Row(
                children: [
                  Icon(
                    Icons.person_outline,
                    color: Colors.black,
                    size: 16.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text('Michele George'),
                  ),
                ],
              ),
              verticalSpace5,
              Row(
                children: [
                  Icon(
                    Icons.calendar_today_sharp,
                    color: Colors.black,
                    size: 16.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text('01-01-2021'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      actions: <Widget>[
        SlideAction(
          color: Colors.red,
          child: Text('Reject',
              style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w700)),
          onTap: () => _showSnackBar('Reject'),
        ),
      ],
      secondaryActions: <Widget>[
        SlideAction(
          color: Colors.green,
          child: Text('Accept',
              style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w700)),
          onTap: () => _showSnackBar('Accept'),
        ),
      ],
    );
  }

  Widget _buildList(BuildContext context, Axis direction) {
    return ListView.builder(
      scrollDirection: direction,
      itemBuilder: (context, index) {},
      itemCount: 3,
    );
  }

  void _showSnackBar(String text) {
    Scaffold.of(context).showSnackBar(SnackBar(content: Text(text)));
  }
}
