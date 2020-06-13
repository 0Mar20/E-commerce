import 'package:flutter/material.dart';
import 'CategoryPressesd.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            imageLocation: 'images/shirt.png',
            imageCaption: 'Shirts',
          ),
          Category(
            imageLocation: 'images/dress.png',
            imageCaption: 'Dresses',
          ),
          Category(
            imageLocation: 'images/pants.png',
            imageCaption: 'Pants',
          ),
          Category(
            imageLocation: 'images/formal.png',
            imageCaption: 'Formal',
          ),
          Category(
            imageLocation: 'images/informal.png',
            imageCaption: 'Informa',
          ),
          Category(
            imageLocation: 'images/shoes.png',
            imageCaption: 'Shoes',
          ),
          Category(
            imageLocation: 'images/accessories.png',
            imageCaption: 'Accessories',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String imageLocation;
  final String imageCaption;
  Category({
    this.imageLocation,
    this.imageCaption
});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
        child: InkWell(
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => CategoryPressed(
                title: imageCaption,
              )
            ));
          },
          child: Container(
            height: 80.0,
            width: 110.0,
            child: ListTile(
              title: Image.asset(
                imageLocation,
                width: 80.0,
                height: 50.0,
              ),
              subtitle: Container(
                alignment: Alignment.topCenter,
                child: Text(
                  imageCaption
                ),
              ),
            ),
          ),
        ),
    );
  }
}
