import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ShopListItem.dart';

class ShoppingList extends StatefulWidget {
  ShoppingList({Key key, this.products}) : super(key: key);

  final List<Product> products;

  // The framework calls createState the first time a widget appears at a given
  // location in the tree. If the parent rebuilds and uses the same type of
  // widget (with the same key), the framework will re-use the State object
  // instead of creating a new State object.

  @override
  _ShoppingListState createState() => new _ShoppingListState();
}

class _ShoppingListState extends State<ShoppingList> {
  Set<Product> _shoppingCart = new Set<Product>();

  void _handleCartChanged(Product product, bool inCart) {
    setState(() {
      // When user changes what is in the cart, we need to change _shoppingCart
      // inside a setState call to trigger a rebuild. The framework then calls
      // build, below, which updates the visual appearance of the app.

      if (inCart)
        _shoppingCart.add(product);
      else
        _shoppingCart.remove(product);
    });
  }

  String t = "";
  Text _text = Text('Treasury');
  TextField _textField = TextField(
    obscureText: true,
    decoration: InputDecoration(
      border: OutlineInputBorder(),
      labelText: 'Password',
    ),
    onChanged: (tv){
      print("object:"+tv);
    },
  );

  @override
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Shopping List'),
        leading: new IconButton(
            icon: new Icon(Icons.add , color: Colors.amberAccent),
            onPressed: (){
              showDialog(context: context,
                  builder: (BuildContext context) {
                    return SimpleDialog(
                      title: const Text('Select assignment'),
                      children: <Widget>[
                        SimpleDialogOption(
                          onPressed: () {print("${_textField.toString()}"); },
                          child: _textField,
                        ),
                        SimpleDialogOption(
                          onPressed: () {print("${_textField.toString()}");  },
                          child: const Text('State department'),
                        ),
                      ],
                    );
                  });
            }),
      ),
      body: new ListView(
        padding: new EdgeInsets.symmetric(vertical: 8.0),
        children: widget.products.map((Product product) {
          return new ShoppingListItem(
            product: product,
            inCart: _shoppingCart.contains(product),
            onCartChanged: _handleCartChanged,
          );
        }).toList(),
      ),
    );
  }



  Future<void> _askedToLead(BuildContext context) async {
    switch (await showDialog<String>(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text('Select assignment'),
            children: <Widget>[
              SimpleDialogOption(
                onPressed: () { },
                child: const Text('Treasury department'),
              ),
              SimpleDialogOption(
                onPressed: () {  },
                child: const Text('State department'),
              ),
            ],
          );
        }
    )) {
      case "1":
      // Let's go.
      // ...
        break;
      case "2":
      // ...
        break;
    }
  }
}