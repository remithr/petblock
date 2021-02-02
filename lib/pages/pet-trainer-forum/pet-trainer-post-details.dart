import 'package:flutter/material.dart';
import 'package:petblock/styles/style.dart';

class PetTrainerPostsHome extends StatelessWidget {
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
          'Why is my pet not eating?',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 10.0,
            right: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              allPostsCard(
                context,
                'assets/images/nick.png',
                'Nick Johnson',
              ),
              verticalSpace10,
              Text(
                'Answers(10)',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              verticalSpace10,
              answerCard({
                'name': 'Niel(trainer)',
                'img': 'assets/images/niel.png',
              }),
              verticalSpace10,
              answerCard({
                'name': 'James. S(trainer)',
                'img': 'assets/images/jamess.png',
              }),
            ],
          ),
        ),
      ),
    );
  }

  Card answerCard(Map<String, dynamic> trainer) {
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
              leading: Image.asset(
                trainer['img'],
              ),
              title: Text(
                trainer['name'],
              ),
            ),
          ),
          verticalSpace10,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 25.0,
                  right: 25.0,
                ),
                child: Text(
                  ' In some cases, however, there may be another reason your dog won\'t eat. Dogs may go off their food because of changes in their environment, stress, an adverse reaction to drugs, and nausea.',
                  maxLines: 8,
                  softWrap: true,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              )
            ],
          ),
          verticalSpace20,
        ],
      ),
    );
  }

  Card allPostsCard(BuildContext context, String image, String name) {
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
              title: Text(name),
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
