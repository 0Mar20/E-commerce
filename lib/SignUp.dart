import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'SignIn.dart';
import 'SigningContent.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset(
                "images/background.jpg",
                fit: BoxFit.cover,
              ),
            ),
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(0, 0, 140, 0.3),
                  Color.fromRGBO(0, 0, 255, 0.5),
                ],
              ),
            ),
            child: ListView(
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 100.0, right: 8.0, left: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Sign up",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 40.0,
                            fontFamily: 'Pacifico',
                          ),
                        ),
                        Divider(),
                        Field(
                          hintText: 'Name',
                        ),
                        Field(
                          hintText: 'Email',
                        ),
                        Divider(),
                        Field(
                          hintText: 'Password',
                        ),
                        Divider(),
                        Field(
                          hintText: 'Password configure',
                        ),
                        Divider(),
                        Field(
                          hintText: 'Phone number',
                        ),
                        Divider(),
                        Container(
                          height: 50.0,
                          width: MediaQuery.of(context).size.width/1.5,
                          child: MaterialButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(50.0)
                              ),
                            ),
                            onPressed: (){
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => SignIn()
                              ));
                            },
                            color: Colors.white,
                            child: Text(
                              "Sign up",
                              style: TextStyle(
                                color: Colors.blueAccent,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: FlatButton(
                            onPressed: (){
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => SignIn()
                              ));
                            },
                            child: Text(
                              "Sign In ! instead",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ),
        ],
      ),
    );
  }
}