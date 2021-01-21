import 'package:flutter/material.dart';
import 'package:petblock/styles/style.dart';

class CommentsPage extends StatefulWidget {
  @override
  _CommentsPageState createState() => _CommentsPageState();
}

class _CommentsPageState extends State<CommentsPage> {
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
          'Comments',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.88,
          child: Column(
            children: [
              buildListWidget('assets/images/nick.png', 'Nik Johnson'),
              buildDivider(),
              buildListWidget('assets/images/steven.png', 'Steven George'),
              buildDivider(),
              buildListWidget('assets/images/steven.png', 'Steven George'),
              buildDivider(),
              buildListWidget('assets/images/steven.png', 'Steven George'),
              buildDivider(),
              Expanded(
                child: Container(),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: ListTile(
                  leading: Image.asset(
                    'assets/images/avatar.png',
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                  title: TextField(
                    decoration: InputDecoration(hintText: 'Add a Comment'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Padding buildDivider() {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20.0,
        right: 20.0,
      ),
      child: Divider(
        color: Colors.grey,
      ),
    );
  }

  Widget buildListWidget(String image, String name) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 10.0,
        right: 10.0,
      ),
      child: ListTile(
        leading: Image.asset(image),
        // title: Text(name),
        title: Padding(
          padding: const EdgeInsets.only(
            right: 40.0,
            bottom: 5,
          ),
          child: RichText(
            text: TextSpan(
              text: name,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: ' Why my pet is not eating?',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
        ),
        subtitle: Text('10-06-20'),
      ),
    );
  }
}
