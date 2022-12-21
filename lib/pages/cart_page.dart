import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';


class CartPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
              backgroundColor:context.canvasColor,

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: "Cart".text.color(context.accentColor).make(),titleTextStyle: TextStyle(
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

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:100 ,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          "\$9999".text.xl4.color(context.accentColor).make(),
          30.widthBox,
         ElevatedButton(onPressed:(){

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
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder:(context,index)=>ListTile(
        leading: Icon(Icons.done,color: context.accentColor,),
        trailing: IconButton(
            icon: Icon(Icons.remove_circle_outline,color: context.accentColor),
            onPressed: (){},
          ),
        title: "Item 1".text.xl2.color(context.accentColor).make(),
      ) ,
    );
  }
}