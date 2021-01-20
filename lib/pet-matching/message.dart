import 'package:flutter/material.dart';
import 'package:petblock/styles/style.dart';

class Message extends StatefulWidget {
  @override
  _MessageState createState() => _MessageState();
}

class _MessageState extends State<Message> {
  bool isMe = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top:18.0, left:18.0, right:18.0),
          child: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Column(
              children: <Widget>[
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
                        'Neil K',
                        style: pTitle,
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(0.0),
                        topRight: Radius.circular(0.0),
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0),
                      ),
                      child: ListView.builder(
                        reverse: false,
                        padding: EdgeInsets.only(top: 15.0),
                        itemCount: 10,
                        itemBuilder: (BuildContext context, int index) {
                          return _buildMessage();
                        },
                      ),
                    ),
                  ),
                ),
                Divider(
                  height: 2.0,
                  color: Colors.grey,
                ),
                _buildTextComposer(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextComposer() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      height: 45.0,
      color: Colors.white,
      child: Container(
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: TextField(
                keyboardType: TextInputType.text,
                //controller: _textController,
                keyboardAppearance: Brightness.light,
                textCapitalization: TextCapitalization.sentences,
                onChanged: (value) {
                  setState(() {
                    //_textController;
                  });
                },
                decoration: InputDecoration.collapsed(
                  hintText: 'Send Message',
                ),
              ),
            ),
            IconButton(
              icon: Icon(Icons.send),
              iconSize: 25.0,
              color: Theme.of(context).primaryColor,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }

  //Function rerurns the message container
  _buildMessage() {
    isMe = !isMe;
    final Container msg = Container(
      width: MediaQuery.of(context).size.width * 0.60,
      margin: isMe
          ? EdgeInsets.only(
              top: 8.0,
              bottom: 8.0,
              left: 10.0,
            )
          : EdgeInsets.only(
              top: 8.0,
              bottom: 8.0,
              right: 10.0,
            ),
      padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
      decoration: BoxDecoration(
        color: isMe ? tgrey : Colors.blue[300],
        borderRadius: isMe
            ? BorderRadius.all(
                Radius.circular(15.0),
              )
            : BorderRadius.all(
                Radius.circular(15.0),
              ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          //SizedBox(height: 4.0),
          SelectableText(
            'Test',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 180.0, top: 10),
            child: Text('10:15',
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400)),
          )
        ],
      ),
    );
    if (isMe) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: CircleAvatar(
                radius: 10.0,
                backgroundColor: Colors.white,
                backgroundImage: ExactAssetImage('assets/images/usr2.png'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text('Neil K'),
            ),
          ],
        ),
        msg,
      ]);
    }
    ;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text('Nora Luis'),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: CircleAvatar(
                radius: 10.0,
                backgroundImage: AssetImage('assets/images/usr1.png'),
              ),
            ),
          ],
        ),
        msg
      ],
    );
  }
}
