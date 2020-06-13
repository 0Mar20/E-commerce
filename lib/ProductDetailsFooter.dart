import 'package:flutter/material.dart';

class DetailsFooter extends StatelessWidget {
  final String text1;
  final String text2;

  DetailsFooter({
    this.text1,
    this.text2,
});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
          child: Text(
            text1,
            style: TextStyle(
              color: Colors.grey
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Text(
            text2,
          ),
        ),
      ],
    );
  }
}
