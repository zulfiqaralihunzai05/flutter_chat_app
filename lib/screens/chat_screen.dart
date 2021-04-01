import 'package:flutter/material.dart';
import 'package:flutter_chat_app/models/message_model.dart';
import 'package:flutter_chat_app/models/user_model.dart';

class ChatScreen extends StatefulWidget {
  final User user;
  // static const routeName = '/chat_screen';

  ChatScreen({this.user});

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  _chatBubble(Message message, bool isMe, bool isSameUser){
    if(isMe){
      return Column(
        children: [
          Container(
            alignment: Alignment.topRight,
            child: Container(

              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 0.80,
              ),
              child: Text(
                message.text,
                style: TextStyle(
                    color: Colors.white
                ),),
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                  ),
                ],
              ),
            ),
          ),
          !isSameUser ?
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                message.time,
                style:TextStyle(
                  fontSize: 12,
                  color: Colors.black45,
                ), ),

              SizedBox(width: 10),

              Container(

                decoration:
                BoxDecoration(shape: BoxShape.circle, boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                  ),
                ]),
                child: CircleAvatar(

                  backgroundImage:
                  AssetImage(message.sender.imageUrl),
                ),
              ),
            ],
          )
              : Container(
            child: null,
          )
        ],
      );
    }
    else{
      return Column(
        children: [
          Container(
            child: Container(
              alignment: Alignment.topLeft,
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 0.80,
              ),
              child: Text(
                  message.text),
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                  ),
                ],
              ),
            ),
          ),
          !isSameUser ?
          Row(
            children: [
              Container(
                decoration:
                BoxDecoration(shape: BoxShape.circle, boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                  ),
                ]),
                child: CircleAvatar(

                  backgroundImage:
                  AssetImage(message.sender.imageUrl),
                ),
              ),

              SizedBox(width: 10),
              Text(message.time,
                style:TextStyle(
                  fontSize: 12,
                  color: Colors.black45,
                ), ),
            ],
          )
              : Container(child: null,)
        ],
      );
    }
  }

  _sendMessageArea(){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8),
      height: 70,
      color: Colors.white,
      child: Row(
        children: [
          IconButton(
              icon: Icon(Icons.photo),
              iconSize: 25,
              color: Theme.of(context).primaryColor,
              onPressed: (){
          }),

          Expanded(
            child: TextField(
              decoration: InputDecoration.collapsed(hintText: 'Send a Message...'),
              textCapitalization: TextCapitalization.sentences,
            ),
          ),

          IconButton(
              icon: Icon(Icons.send),
              iconSize: 25,
              color: Theme.of(context).primaryColor,
              onPressed: (){
              }),
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    int prevUserId;
    return Scaffold(
      backgroundColor: Color(0xfff6f6f6),
      appBar: AppBar(
        brightness: Brightness.dark,
        elevation: 8,
        title: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(children: [
            TextSpan(
                text: widget.user.name,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                )),
            TextSpan(text: '\n'),
            widget.user.isOnline ?
            TextSpan(
              text: 'Online',
              style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w400,
              ),
            ):
            TextSpan(
              text: 'Offline',
              style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w400,
              ),
            ),
          ]),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child:ListView.builder(
              padding: EdgeInsets.all(15),
              reverse: true,
              itemCount: messages.length,
            itemBuilder: (BuildContext context, int index){
                final Message message = messages[index];
                final bool isMe = message.sender.id == currentUser.id;

                final bool isSameUser = prevUserId == message.sender.id;
                prevUserId = message.sender.id;

                return _chatBubble(message, isMe, isSameUser);
            },
            )
          ),

          _sendMessageArea()

        ],
      ),
    );
  }
}
