import 'package:ecommerce/SignUp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'HomeScreen.dart';
import 'SigningContent.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

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
                        padding: const EdgeInsets.only(top: 200.0, right: 8.0, left: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Sign in",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 40.0,
                                fontFamily: 'Pacifico',
                              ),
                            ),
                            Divider(),
                            Field(
                              hintText: 'Email',
                            ),
                            Divider(),
                            Field(
                              hintText: 'Password',
                            ),
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
                                      builder: (context) => HomeScreen()
                                  ));
                                },
                                color: Colors.white,
                                child: Text(
                                  "Sign in",
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
                                      builder: (context) => SignUp()
                                  ));
                                },
                                child: Text(
                                  "Sign Up ! instead",
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
