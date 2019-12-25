import 'package:flutter/material.dart';
import 'package:flutter_chat/model/message_model.dart';
import 'package:flutter_chat/model/user_model.dart';

class ChatScreen extends StatefulWidget {
  final User user;

  ChatScreen({this.user});

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  TextEditingController controller = TextEditingController();
  _buildMessage(Message message, bool isMe) {
    Widget msg = Container(
      width: MediaQuery.of(context).size.width * 0.75,
      margin:
          isMe ? EdgeInsets.only(left: 80, top: 8, bottom: 8) : EdgeInsets.only(top: 8, bottom: 8),
      padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 16.0),
      decoration: BoxDecoration(
          color: isMe ? Theme.of(context).accentColor : Color(0xFFFFEFEE),
          borderRadius: isMe
              ? BorderRadius.only(topLeft: Radius.circular(15.0), bottomLeft: Radius.circular(15.0))
              : BorderRadius.only(
                  topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            message.time,
            style: TextStyle(color: Colors.blueGrey, fontSize: 16, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 8.0,
          ),
          Text(message.text,
              style: TextStyle(color: Colors.blueGrey, fontSize: 16, fontWeight: FontWeight.w600)),
        ],
      ),
    );
    if (isMe) {
      return msg;
    }
    return Row(
      children: <Widget>[
        msg,
        IconButton(
            icon: Icon(
              message.isLiked ? Icons.favorite : Icons.favorite_border,
              color: Theme.of(context).primaryColor,
            ),
            onPressed: () {})
      ],
    );
  }

  _buildMessageComposer(){
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          height: 56,
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
                Radius.circular(35)
            ),
            border:Border.all(color: Colors.black45)
          ),

          child: Row(
            children: <Widget>[
              IconButton(
                  icon: Icon(
                    Icons.photo,
                    size: 30.0,
                    color: Theme.of(context).primaryColor,
                  ),
                  onPressed: () {}),
              Expanded(child: TextField(
                textCapitalization: TextCapitalization.sentences,
                decoration: InputDecoration.collapsed(
                  hintText: "Send a Message"
                ),
              )),
              IconButton(
                  icon: Icon(
                    Icons.send,
                    size: 30.0,
                    color: Theme.of(context).primaryColor,
                  ),
                  onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          widget.user.name,
          style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.more_horiz,
                size: 30.0,
                color: Colors.white,
              ),
              onPressed: () {})
        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30.0), topLeft: Radius.circular(30.0))),
                child: GestureDetector(
                  onTap: (){
                    FocusScope.of(context).unfocus();
                  },
                  child: ClipRRect(
                    borderRadius:
                    BorderRadius.only(topRight: Radius.circular(30.0), topLeft: Radius.circular(30.0)),
                    child: ListView.builder(
                        reverse: true,
                        itemCount: chats.length,
                        itemBuilder: (BuildContext context, int index) {
                          Message message = chats[index];
                          bool isMe = message.sender.id == widget.user.id ? true : false;
                          return _buildMessage(message, isMe);
                        }),
                  ),
                )),
          ),
          _buildMessageComposer()
        ],
      ),
    );
  }
}
