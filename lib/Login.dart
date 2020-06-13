import 'package:flutter/material.dart';
import 'package:ecommerce/SignIn.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: <Widget>[
          Container(
            height: double.infinity,
            child: Image.asset(
              "images/TFS_Article_2019_970x643.jpg",
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 12.0, right: 12.0, bottom: 8.0, top: 8.0),
          child: FlatButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
                side: BorderSide(color: Colors.black)),
            color: Colors.red,
            onPressed: (){
              Navigator.of(context)
                  .push(MaterialPageRoute(
                  builder: (context) => SignIn()
              )
              );
            },
            child: Text(
              "Get Started",
              style: TextStyle(
                letterSpacing: 1.0,
                color: Colors.black,
                fontSize: 17.0
              ),
            ),
          ),
        ),
      ),
    );
  }
}
