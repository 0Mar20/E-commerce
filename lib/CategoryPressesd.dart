import 'package:flutter/material.dart';
import 'RecentProducts.dart';

class CategoryPressed extends StatelessWidget {
  final String title;
  CategoryPressed({
    this.title,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        child: Products(),
      ),
    );
  }
}