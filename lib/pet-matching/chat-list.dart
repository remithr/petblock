import 'package:flutter/material.dart';
import 'package:petblock/styles/style.dart';

class ChatList extends StatefulWidget {
  @override
  _ChatListState createState() => _ChatListState();
}

final List userList = [
  {'name': 'Sam Joseph', 'img': 'assets/images/usr1.png', 'message': 'Hi Sam'},
  {'name': 'Neil K', 'img': 'assets/images/usr2.png', 'message': 'Hi Neil'},
  {
    'name': 'Rachelle John',
    'img': 'assets/images/usr3.png',
    'message': 'Hi Rachelle'
  },
  {
    'name': 'Janice Dsouza',
    'img': 'assets/images/usr4.png',
    'message': 'Hi Janice'
  },
  {'name': 'Keni K', 'img': 'assets/images/usr5.png', 'message': 'Hi Keni'},
  {
    'name': 'Joey Anderson',
    'img': 'assets/images/usr6.png',
    'message': 'Hi Joey'
  }
];

class _ChatListState extends State<ChatList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          verticalSpace20,
          ListTile(
            leading: Image(
              image: AssetImage('assets/icons/pet-location.png'),
            ),
            trailing: Wrap(
              spacing: 12, // space between two icons
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                ), // icon-1
                Padding(
                  padding: const EdgeInsets.only(top: 12.0, right: 5.0),
                  child: Icon(
                    Icons.notifications_outlined,
                    color: Colors.black,
                  ),
                ),
                CircleAvatar(
                  backgroundImage: AssetImage(userList[2]['img']),
                ), // icon-2
              ],
            ),
          ),
          verticalSpace20,
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text('Messages', style: matchTxt),
          ),
          verticalSpace20,
          Expanded(
            child: ListView.builder(
              itemCount: userList.length,
              itemBuilder: (BuildContext ctxt, int index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(userList[index]['img']),
                  ),
                  trailing: Text('Mon 09:00 AM', style: lgText),
                  title: Text(userList[index]['name'], style: matchTxt),
                  subtitle: Text(userList[index]['message']),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
