import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  static const routeName = '/signup_screen';
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

      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints ){
          return Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              color: Theme.of(context).primaryColor,
              width: double.infinity,
              child: SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: viewportConstraints.maxHeight
                  ),
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
                            hintText: 'Email Address',
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
                      TextField(
                        obscureText: true,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black54,
                        ),
                        decoration: InputDecoration(
                            hintText: 'Confirm Password',
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
                        child: Text('Signup', style: TextStyle(
                          fontSize: 20,
                        ),),
                        shape: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white, width: 2),
                          borderRadius: BorderRadius.circular(5),

                        ),
                        padding: EdgeInsets.all(15),
                        textColor: Colors.white,
                        onPressed: (){

                        },
                      )

                    ],
                  ),
                ),
              ),
          );
        },
      ) ,
    );
  }
}
