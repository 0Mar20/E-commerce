import 'package:flutter/material.dart';

class CartContent extends StatefulWidget {
  @override
  _CartContentState createState() => _CartContentState();
}

class _CartContentState extends State<CartContent> {
  var cartProduct= [
    {
      'image':'images/Blazer1.jpg',
      'name':'Black Blazer',
      'size':'M',
      'color':'Black',
      'quantity': 1,
      'price': 180
    },
    {
      'image':'images/Blazer2.webp',
      'name':'Grey Blazer',
      'size':'M',
      'color':'Grey',
      'quantity': 1,
      'price': 150
    },
    {
      'image':'images/dress1.jpg',
      'name':'Black Dress',
      'size':'M',
      'color':'Black',
      'quantity': 1,
      'price': 250
    },
    {
      'image':'images/dress2.jpg',
      'name':'Green Dress',
      'size':'M',
      'color':'Green',
      'quantity': 1,
      'price': 220
    },
    {
      'image':'images/suit1.jpg',
      'name':'Dark Blue Suit',
      'size':'M',
      'color':'Dark blue',
      'quantity': 1,
      'price': 500
    },
    {
      'image':'images/suit2.jpg',
      'name':'Black Suit',
      'size':'M',
      'color':'Black',
      'quantity': 1,
      'price': 460
    },
    {
      'image':'images/shoes1.jpg',
      'name':'Black Shoes',
      'size':'M',
      'color':'Black',
      'quantity': 1,
      'price': 300
    },
    {
      'image':'images/shoes2.jpg',
      'name':'black Shoes',
      'size':'L',
      'color':'Black',
      'quantity': 1,
      'price': 290
    },
    {
      'image':'images/watch1.jpg',
      'name':'Grey Watch',
      'size':'M',
      'color':'Black',
      'quantity': 1,
      'price': 90
    },
    {
      'image':'images/watch2.jpeg',
      'name':'Black Watch',
      'size':'M',
      'color':'Black',
      'quantity': 1,
      'price': 110
    },
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: cartProduct.length,
      itemBuilder: (context, index){
        return CartProduct(
          productPrice: cartProduct[index]['price'],
          productImage: cartProduct[index]['image'],
          productName: cartProduct[index]['name'],
          productColor: cartProduct[index]['color'],
          productQuantity: cartProduct[index]['quantity'],
          productSize: cartProduct[index]['size'],
        );
      },
    );
  }
}

class CartProduct extends StatelessWidget {
  final productImage;
  final productName;
  final productSize;
  final productColor;
  final productQuantity;
  final productPrice;

  CartProduct({
   this.productImage,
   this.productName,
   this.productSize,
   this.productColor,
   this.productQuantity,
    this.productPrice,
});
  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
//       ================= IMAGE ================
          leading: Image.asset(
            productImage,
            height: 80.0,
            width: 80.0,
          ),
//       ================ Name =====================
          title: Text(
            productName,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
//       =============== SIZE ======================
          subtitle: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text(
                      'Size:'
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      productSize,
                      style: TextStyle(
                        color: Colors.red,
                      ),
                    ),
                  ),
//         ==================== COLOR ====================
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 4.0, 4.0, 4.0),
                    child: Text(
                        'Color:'
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      productColor,
                      style: TextStyle(
                        color: Colors.red,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  "\$${productPrice}",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold
                  ),
                ),
              )
            ],
          ),
        ),
      );
  }
}
