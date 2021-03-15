import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.menu),onPressed: (){

        },
        ),
        title: Text('Inbox'),

        action
      ),


      body: Container(
        child: Text('hello world'),
      ),
    );
  }
}
