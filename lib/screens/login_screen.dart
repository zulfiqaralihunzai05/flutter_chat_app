import 'package:flutter/material.dart';
import 'package:flutter_chat_app/screens/home_screen.dart';
import 'home_screen.dart';

class LoginScreen extends StatelessWidget {
  static const routeName = '/login_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: (){
            Navigator.of(context).pop();
          },
        ),

        //title: Text('Login'),
      ),

      body: Container(
        padding: EdgeInsets.all(15),
        color: Theme.of(context).primaryColor,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            Image.asset('assets/images/logo.png', height: 130,),
            SizedBox(height: 20,),
            TextField(
              style: TextStyle(
                fontSize: 18,
                color: Colors.black54,
              ),
              decoration: InputDecoration(
                hintText: 'UserName',
                contentPadding: EdgeInsets.all(15),
                filled: true,
                fillColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.circular(5),

                )


              ),
            ),
            SizedBox(height: 20,),
            TextField(
              obscureText: true,
              style: TextStyle(
                fontSize: 18,
                color: Colors.black54,
              ),
              decoration: InputDecoration(
                  hintText: 'Password',
                  contentPadding: EdgeInsets.all(15),
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.circular(5),

                  )


              ),
            ),

            SizedBox(height: 20,),

            FlatButton(
              child: Text('Login', style: TextStyle(
                fontSize: 20,
              ),),
              shape: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white, width: 2),
                borderRadius: BorderRadius.circular(5),

              ),
              padding: EdgeInsets.all(15),
              textColor: Colors.white,
              onPressed: (){
                Navigator.of(context).pushNamed(HomeScreen.routeName);
              },
            )

          ],
        )
      ),
    );
  }
}
