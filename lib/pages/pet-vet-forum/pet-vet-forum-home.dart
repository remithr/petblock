import 'package:flutter/material.dart';
import 'package:petblock/styles/style.dart';

class PetVetForumHome extends StatefulWidget {
  @override
  _PetVetForumHomeState createState() => _PetVetForumHomeState();
}

class _PetVetForumHomeState extends State<PetVetForumHome> {
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
          'Pet Vet Forum',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: DefaultTabController(
          length: 2, // length of tabs
          initialIndex: 0,
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                child: TabBar(
                  labelColor: Colors.green,
                  unselectedLabelColor: Colors.black,
                  indicatorPadding: EdgeInsets.zero,
                  tabs: [
                    Tab(text: 'All Posts'),
                    Tab(text: 'My Posts'),
                  ],
                ),
              ),
              Container(
                height:
                    MediaQuery.of(context).size.height, //height of TabBarView
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      color: Colors.grey,
                      width: 0.5,
                    ),
                  ),
                ),
                child: TabBarView(
                  children: <Widget>[
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child:
                              allPostsCard(context, 'assets/images/nick.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child:
                              allPostsCard(context, 'assets/images/steven.png'),
                        ),
                        // Text('All Posts'),
                      ],
                    ),
                    Text('My Posts Section Here'),
                    // Container(
                    //   child: Center(
                    //     child: Text('Display Tab 4',
                    //         style: TextStyle(
                    //             fontSize: 22,
                    //             fontWeight: FontWeight.bold)),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        child: Icon(Icons.add),
        backgroundColor: primaryColor,
      ),
    );
  }

  Card allPostsCard(BuildContext context, String image) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          10,
        ),
      ),
      elevation: 5,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: ListTile(
              leading: Image.asset(image),
              title: Text('Nick Johnson'),
              subtitle: Text(
                'View More',
                style: TextStyle(
                  color: primaryColor,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Type',
                  ),
                  verticalSpace10,
                  Text(
                    'Subject',
                  ),
                  verticalSpace10,
                  Text(
                    'Question',
                  ),
                  verticalSpace10,
                  Text(
                    'Answered By',
                    style: TextStyle(
                      color: primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  verticalSpace10,
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Food',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  verticalSpace10,
                  Text(
                    'Pet Food',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  verticalSpace10,
                  Text(
                    'Why is my pet not eating?',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  verticalSpace10,
                  Text(
                    'Dr Christina',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  verticalSpace10,
                ],
              )
            ],
          ),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.add_comment,
            ),
            title: Text(
              'Add a comment..',
            ),
          ),
        ],
      ),
    );
  }
}
