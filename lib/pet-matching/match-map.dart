import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';
import 'package:petblock/styles/style.dart';

class MatchMap extends StatefulWidget {
  @override
  _MatchMapState createState() => _MatchMapState();
}

class _MatchMapState extends State<MatchMap> {
  @override
  Widget build(BuildContext context) {
    //print(MediaQuery.of(context).size.width);
    print((MediaQuery.of(context).size.height / 100) * 70);
    var tHeight = (MediaQuery.of(context).size.height / 100) * 32;
    return SafeArea(
      child: Scaffold(
        backgroundColor: tgrey,
        body: Column(
          children: [
            SizedBox(
              height: tHeight,
              width: MediaQuery.of(context).size.width,
              child: FlutterMap(
                options: new MapOptions(
                  //minZoom: 12.0,
                  zoom: 8.0,
                  center: LatLng(19.9975, 73.7898),
                ),
                layers: [
                  new TileLayerOptions(
                      urlTemplate:
                          'https://server.arcgisonline.com/ArcGIS/rest/services/World_Imagery/MapServer/tile/{z}/{y}/{x}.png',
                      subdomains: ['a', 'b', 'c']),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height - tHeight,
              //margin: EdgeInsets.only(top: 100),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blueAccent),
                borderRadius: new BorderRadius.only(
                  topLeft: Radius.circular(50.0),
                  topRight: Radius.circular(50.0),
                ),
                color: Colors.white,
              ),
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 25.0, top: 25.0, right: 25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Your Matches',
                      style: pTitle,
                      textAlign: TextAlign.left,
                    ),
                    Expanded(
                      child: GridView.builder(
                        itemCount: 8,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: 8.0 / 6.0,
                          crossAxisCount: 2,
                        ),
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding:
                                const EdgeInsets.only(top: 8.0, right: 8.0),
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
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Expanded(
                                        child: Container(
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/images/dog.png'),
                                                  fit: BoxFit.cover),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 58.0),
                                              child: SizedBox(
                                                width: 170,
                                                child: Card(
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text('Cherry',
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 16.0,
                                                          )),
                                                      verticalSpace5,
                                                      Text(
                                                        'Sophia Steven',
                                                        style: TextStyle(
                                                          fontSize: 12.0,
                                                        ),
                                                      ),
                                                      Row(
                                                        children: [
                                                          Expanded(
                                                            child: Text(
                                                                '5 miles',
                                                                style:
                                                                    TextStyle(
                                                                  fontSize:
                                                                      12.0,
                                                                )),
                                                          ),
                                                          Expanded(
                                                            flex: 2,
                                                            child: Text(
                                                              '2 years',
                                                              style: TextStyle(
                                                                fontSize: 12.0,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            )),
                                      ),
                                    ],
                                  )),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
