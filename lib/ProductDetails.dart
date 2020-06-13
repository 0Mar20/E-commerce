import 'package:flutter/material.dart';
import 'HomeScreen.dart';
import 'ProductDetailsFooter.dart';
import 'SimilarProducts.dart';

class ProductDetails extends StatefulWidget {
  final productDetailedName;
  final productDetailedImage;
  final productDetailedBrand;
  final productDetailedPrice;
  final productDetailedOldPrice;
  
  ProductDetails({
    this.productDetailedName,
    this.productDetailedImage,
    this.productDetailedBrand,
    this.productDetailedPrice,
    this.productDetailedOldPrice,
});
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: InkWell(
          onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                  builder: (context) => HomeScreen()
              )
          ),
          child: Text('ShopApp'),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: (){
              //
            },
          ),
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            onPressed: (){
              //
            },
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 350.0,
            child: GridTile(
                child: Container(
                  color: Colors.white,
                  child: Image.asset(widget.productDetailedImage),
                ),
              footer: Container(
                color: Colors.white.withOpacity(0.7),
                child: ListTile(
                  title: Text(
                    "${widget.productDetailedName}",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0
                    ),
                  ),
                  subtitle: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          "\$${widget.productDetailedPrice}",
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "\$${widget.productDetailedOldPrice}",
                          style: TextStyle(
                            color: Colors.red,
                            decoration: TextDecoration.lineThrough
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                ),
              ),
            ),
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                  onPressed: (){
                    showDialog(context: context,
                      builder: (context){
                      return AlertDialog(
                        title: Text('Size'),
                        content: Text('Choose your size'),
                        actions: <Widget>[
                          MaterialButton(
                            onPressed: (){
                              Navigator.of(context).pop(context);
                            },
                            child: Text('Close'),
                          )
                        ],
                      );
                    }
                    );
                    },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          'Size',
                        ),
                      ),
                      Expanded(
                        child: Icon(
                          Icons.arrow_drop_down
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: (){
                    showDialog(context: context,
                        builder: (context){
                          return AlertDialog(
                            title: Text('Color'),
                            content: Text('Choose your color'),
                            actions: <Widget>[
                              MaterialButton(
                                onPressed: (){
                                  Navigator.of(context).pop(context);
                                },
                                child: Text('Close'),
                              )
                            ],
                          );
                        }
                    );
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          'Color',
                        ),
                      ),
                      Expanded(
                        child: Icon(
                            Icons.arrow_drop_down
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: (){
                    showDialog(context: context,
                        builder: (context){
                          return AlertDialog(
                            title: Text('Quantity'),
                            content: Text('Choose your quantity'),
                            actions: <Widget>[
                              MaterialButton(
                                onPressed: (){
                                  Navigator.of(context).pop(context);
                                },
                                child: Text('Close'),
                              )
                            ],
                          );
                        }
                    );
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          'Qty',
                        ),
                      ),
                      Expanded(
                        child: Icon(
                            Icons.arrow_drop_down
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                  onPressed: (){
                    //
                  },
                  color: Colors.red,
                  child: Text(
                    'Buy now',
                    style: TextStyle(
                      color: Colors.white
                    ),
                  ),
                ),
              ),
              IconButton(
                  onPressed: (){
                    //
                  },
                  icon: Icon(
                    Icons.shopping_cart,
                    color: Colors.red,
                  ),
                ),
              IconButton(
                  onPressed: (){
                    //
                  },
                  icon: Icon(
                    Icons.favorite_border,
                    color: Colors.red,
                  ),
                ),
            ],
          ),
          Divider(
            color: Colors.transparent,
          ),
          ListTile(
            title: Text(
                'Product details',
                style: TextStyle(
                  fontWeight: FontWeight.bold
                ),
              ),
            subtitle: Text(
              'oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo',
            ),
          ),
          Divider(
            color: Colors.transparent,
          ),
          DetailsFooter(
            text1: 'Product name',
            text2: widget.productDetailedName,
          ),
          DetailsFooter(
            text1: 'Product brand',
            text2: widget.productDetailedBrand,
          ),
          DetailsFooter(
            text1: 'Product condition',
            text2: 'New',
          ),
          Divider(
            color: Colors.transparent,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Similar products',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0
              ),
            ),
          ),
          Container(
            height: 350.0,
            child: SimilarProducts(),
          ),
        ]
      ),
      );
  }
}
