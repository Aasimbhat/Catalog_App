import 'package:flutter/material.dart';
import 'package:flutter_30days/models/catalog.dart';
import 'package:flutter_30days/widgets/drawer.dart';
import 'package:flutter_30days/widgets/item_widget.dart';
class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final dummyList= List.generate(10, (index) => CatalogModel.items[0]);
    return  Scaffold(
      appBar: AppBar(
      
        title:  Text("Catalog App",
      ),
      ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.builder(
            itemCount: dummyList.length,
            itemBuilder: (context, index) {
              return ItemWidget(item:dummyList[index]);
            },
          ),
        ),
        drawer: MyDrawer(),
      );
  }
}