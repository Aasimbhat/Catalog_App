import 'package:flutter/material.dart';
import 'package:flutter_30days/models/cart.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';


class CartPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
              backgroundColor:context.canvasColor,

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: "Cart".text.xl3.color(context.accentColor).make(),titleTextStyle: TextStyle(
          fontFamily:GoogleFonts.poppins().fontFamily 
        ),
      ),
      body: Column(
        children: [
          _CartList().p32().expand(),
          Divider(),
          _CardTotal(),
          
        ],
      ),
    );
  }
}

class _CardTotal extends StatelessWidget {
    final _cart=CartModel();


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:100 ,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          "\$${_cart.totalPrice}".text.xl4.color(context.accentColor).make(),
          30.widthBox,
         ElevatedButton(onPressed:(){
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: "Buying not supported yet.".text.make(),
              ));

         },
          style: ButtonStyle(
            backgroundColor:MaterialStateProperty.all(
              // ignore: deprecated_member_use
              context.theme.buttonColor
            ),
          ),
          child: "Buy".text.xl3.white.make(),
             ).w32(context).h10(context),
        ],
      ),
    );
  }
}


class _CartList extends StatefulWidget {

  @override
  State<_CartList> createState() => __CartListState();
}

class __CartListState extends State<_CartList> {
  final _cart=CartModel();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount:_cart.items.length ,
      itemBuilder:(context,index)=>ListTile(
        leading: Icon(Icons.done,color: context.accentColor,),
        trailing: IconButton(
            icon: Icon(Icons.remove_circle_outline,color: context.accentColor),
            onPressed: (){},
          ),
        title: _cart.items[index].name.text.xl2.color(context.accentColor).make(),
      ) ,
    );
  }
}