import 'package:flutter/material.dart';
import 'ProductDetails.dart';

class SimilarProducts extends StatefulWidget {
  @override
  _SimilarProductsState createState() => _SimilarProductsState();
}

class _SimilarProductsState extends State<SimilarProducts> {
  var productDetails= [
    {
      'image':'images/Blazer1.jpg',
      'name':'Black Blazer',
      'brand':'Brand X',
      'price':180,
      'old price':210,
    },
    {
      'image':'images/Blazer2.webp',
      'name':'Grey Blazer',
      'brand':'Brand X',
      'price':150,
      'old price':190,
    },
    {
      'image':'images/dress1.jpg',
      'name':'Black Dress',
      'brand':'Brand X',
      'price':250,
      'old price':340,
    },
    {
      'image':'images/dress2.jpg',
      'name':'Green Dress',
      'brand':'Brand X',
      'price':220,
      'old price':300,
    },
    {
      'image':'images/suit1.jpg',
      'name':'Dark Blue Suit',
      'brand':'Brand X',
      'price':500,
      'old price':900,
    },
    {
      'image':'images/suit2.jpg',
      'name':'Black Suit',
      'brand':'Brand X',
      'price':460,
      'old price':800,
    },
    {
      'image':'images/shoes1.jpg',
      'name':'Black Shoes',
      'brand':'Brand X',
      'price':300,
      'old price':400,
    },{
      'image':'images/shoes2.jpg',
      'name':'black Shoes',
      'brand':'Brand X',
      'price':290,
      'old price':400,
    },
    {
      'image':'images/watch1.jpg',
      'name':'Grey Watch',
      'brand':'Brand X',
      'price':90,
      'old price':130,
    },
    {
      'image':'images/watch2.jpeg',
      'name':'Black Watch',
      'brand':'Brand X',
      'price':110,
      'old price':170,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemCount: productDetails.length,
      itemBuilder: (BuildContext context, int index){
        return SimilarProduct(
          productImage: productDetails[index]['image'],
          productName: productDetails[index]['name'],
          productBrand: productDetails[index]['brand'],
          productPrice: productDetails[index]['price'],
          productOldPrice: productDetails[index]['old price'],
        );
      },
    );
  }
}


class SimilarProduct extends StatelessWidget {

  final productName;
  final productImage;
  final productBrand;
  final productPrice;
  final productOldPrice;

  SimilarProduct({
    this.productName,
    this.productImage,
    this.productBrand,
    this.productPrice,
    this.productOldPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: productName,
          child: Material(
            child: InkWell(
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) => ProductDetails(
                      productDetailedName: productName,
                      productDetailedImage: productImage,
                      productDetailedBrand: productBrand,
                      productDetailedPrice: productPrice,
                      productDetailedOldPrice: productOldPrice,
                    )
                ),
              ),
              child: GridTile(
                child: Image.asset(
                  productImage,
                  fit: BoxFit.cover,
                ),
                footer: Container(
                  height: 60.0,
                  color: Colors.white.withOpacity(0.7),
                  child: ListTile(
                    leading: Text(
                      productName,
                      style: TextStyle(
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    title: Text(
                      "\$$productPrice",
                      style: TextStyle(
                          fontWeight: FontWeight.w800
                      ),
                    ),
                    subtitle: Text(
                      "\$$productOldPrice",
                      style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w800,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
      ),
    );
  }
}