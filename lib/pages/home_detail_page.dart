import 'package:flutter/material.dart';
import 'package:flutter_30days/pages/home_widgets/add_to_cart.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:flutter_30days/models/catalog.dart';

class HomeDetailpage extends StatelessWidget {
  final Item catalog;

  const HomeDetailpage({Key? key, required this.catalog})
      : assert(catalog != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Colors.blueGrey[900],
      bottomNavigationBar: Container(
        height: 80,
        color: context.cardColor,
        child: ButtonBar(
          
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catalog.price}".text.bold.xl4.red800.make(),
            // ElevatedButton(
            //         onPressed: () {},
            //         style: ButtonStyle(
            //           backgroundColor:
            //               // ignore: deprecated_member_use
            //               MaterialStateProperty.all(context.theme.buttonColor),
            //           shape: MaterialStateProperty.all(StadiumBorder()),
            //         ),
            //         child: "Add To Cart".text.bold.make())
               AddToCart(catalog: catalog,) .wh(120, 50)
          ],
        )
      ),
      body: Column(
        children: [
          Hero(
            tag: Key(catalog.id.toString()),
            child: Image.network(catalog.image),
            
          ).h32(context),
         
          Expanded(
            child: VxArc(
              height: 30.0,
              arcType: VxArcType.CONVEY,
              edge: VxEdge.TOP,
              
              child: Container(
                
                color: context.canvasColor,
                width: context.screenWidth,
                height: 90,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      catalog.name.text.xl4.color(context.accentColor).bold.make().p16(),
                      catalog.desc.text.xl.color(context.accentColor).make(),
                      "Apple Inc. is an American multinational technology company headquartered in Cupertino, California, United States. "
                          .text.color(context.accentColor)
                          .make()
                          
                    ],
                  ),
                ),
                
              ),
              
            ),
            
          ),
          
        ],
      ).py64(),
    );
  }
}
