
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:flutter_30days/models/catalog.dart';
import 'package:flutter_30days/widgets/drawer.dart';
import 'package:flutter_30days/widgets/item_widget.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    var catalogJson = await rootBundle.loadString("assets/files/catalog.json");
    var decodeData = jsonDecode(catalogJson);
    var productsData = decodeData["products"];
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Catalog App",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
            ? GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 16
                    
                    
                    
                    ),
                itemBuilder: (context, index) {
                  final item = CatalogModel.items[index];
                  return Card(
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18)),
                      child: GridTile(
                        header: Container(
                          padding: EdgeInsets.all(16),
                          
                          child: Text(item.name,
                          style:TextStyle(
                            color: Colors.white,
                          ) ,),
                        decoration: BoxDecoration(
                          color: Colors.deepPurple
                        ),
                        ),
                        child: Image.network(item.image),
                        footer:Container(
                          padding: EdgeInsets.all(16),
                          
                          child: Text(item.price.toString(),
                          style:TextStyle(
                            color: Colors.white,
                          ) ,),
                        decoration: BoxDecoration(
                          color: Colors.black
                        ),
                        ),
                      ));
                },
                itemCount: CatalogModel.items.length,
              )
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
      drawer: MyDrawer(),
    );
  }
}
