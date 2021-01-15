import 'package:flutter/material.dart';
import 'package:petblock/styles/style.dart';

class DogProfileReview extends StatefulWidget {
  @override
  _DogProfileReviewState createState() => _DogProfileReviewState();
}

final List<String> imgList = [
  'assets/images/dog1.png',
  'assets/images/dog2.png',
  'assets/images/dog3.png',
  'assets/images/dog4.png',
  'assets/images/dog5.png',
  'assets/images/slide-2.png'
];

class _DogProfileReviewState extends State<DogProfileReview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only(left: 18.0, right: 18.0, top: 15.0, bottom: 8.0),
        child: Column(
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
                  padding: const EdgeInsets.only(left:15.0),
                  child: Text(
                    'Match with Cherry',
                    style: pTitle,
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 40),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                Container(
                  width: 90,
                  height: 90,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: new ExactAssetImage('assets/images/dog.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text('Cherry',
                          style: TextStyle(
                              fontSize: 22.00, fontWeight: FontWeight.bold)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0, left: 21.0),
                      child: Text('Sophia Steven',
                          style: TextStyle(fontSize: 16.00)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0, left: 21.0),
                      child: Row(
                        children: [
                          Text('5 miles'),
                          Text('2 years'),
                        ],
                      ),
                    ),
                  ],
                ),
              ]),
            ),
            Divider(color: Colors.black),
            _createCards(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 54,
                width: MediaQuery.of(context).size.width,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed('create-user');
                  },
                  child: Text(
                    "Send Request",
                    style: TextStyle(fontSize: 18),
                  ),
                  color: primaryColor,
                  textColor: twhite,
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _createCards() {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(top: 10),
        child: GridView.builder(
          itemCount: 6,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 6.0 / 4.0,
            crossAxisCount: 2,
          ),
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.only(top: 8.0, right: 8.0),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('dog-review');
                },
                child: Card(
                    semanticContainer: true,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    clipBehavior: Clip.antiAlias,
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(imgList[index]),
                            fit: BoxFit.cover),
                      ),
                    )),
              ),
            );
          },
        ),
      ),
    );
  }
}
