import 'package:flutter/material.dart';

class DrawerContent extends StatelessWidget {
  final Icon icon;
  final String title;
  DrawerContent({
   this.icon,
   this.title,
});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        //
      },
      child: ListTile(
        leading: icon,
        title: Text(title),
      )
    );
  }
}