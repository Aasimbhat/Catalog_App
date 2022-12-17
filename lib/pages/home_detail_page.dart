import 'package:flutter/material.dart';
import 'package:flutter_30days/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

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
      backgroundColor: Colors.white,
      bottomNavigationBar: Container(
        color: Colors.white,
        child: ButtonBar(
          
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catalog.price}".text.bold.xl4.red800.make(),
            ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.blueGrey[900]),
                      shape: MaterialStateProperty.all(StadiumBorder()),
                    ),
                    child: "Add To Cart".text.bold.make())
                .wh(120, 50)
          ],
        )
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: Key(catalog.id.toString()),
              child: Image.network(catalog.image),
              
            ).h32(context),
            Expanded(
              child: VxArc(
                height: 15.0,
                arcType: VxArcType.CONVEY,
                edge: VxEdge.TOP,
                child: Container(
                  color: Colors.white,
                  width: context.screenWidth,
                  child: Column(
                    children: [
                      catalog.name.text.xl4.color(Colors.black).bold.make().p16(),
                      catalog.desc.text.xl.make(),
                      "Apple Inc. is an American multinational technology company headquartered in Cupertino, California, United States. Apple is the largest technology company by revenue and, as of June 2022. "
                          .text
                          .make()
                          .p16()
                    ],
                  ),
                ),
              ),
            )
          ],
        ).py64(),
      ),
    );
  }
}
