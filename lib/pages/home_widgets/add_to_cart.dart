import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_30days/models/cart.dart';
import 'package:flutter_30days/models/catalog.dart';
import 'package:velocity_x/src/extensions/bool_ext.dart';
import 'package:velocity_x/src/extensions/context_ext.dart';
import 'package:velocity_x/src/extensions/string_ext.dart';

class AddToCart extends StatefulWidget {
  final Item catalog;
  const AddToCart({
    Key? key,
    required this.catalog,
  }) : super(key: key);

  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  final _cart = CartModel();

  @override
  Widget build(BuildContext context) {
    bool isInCart = _cart.items.contains(widget.catalog);

    return ElevatedButton(
        onPressed: () {
          isInCart = isInCart.toggle();
          if (!isInCart) {
            isInCart = isInCart.toggle();

            final catalog = CatalogModel();
            _cart.catalog = catalog;

            _cart.add(widget.catalog);
            setState(() {});
          }
        },
        style: ButtonStyle(
          // ignore: deprecated_member_use
          backgroundColor: MaterialStateProperty.all(context.theme.buttonColor),
          shape: MaterialStateProperty.all(StadiumBorder()),
        ),
        child: isInCart
            ? Icon(Icons.done_outline_outlined)
            : Icon(Icons.add_shopping_cart_rounded));
  }
}