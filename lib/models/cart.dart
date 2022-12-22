import 'package:flutter_30days/models/catalog.dart';

class CartModel{

//catalog field
late CatalogModel _catalog;

//colllection of ids

final List<int> _itemIds=[];

//get catalog
CatalogModel get catalog => _catalog;

//set catalog
set catalog(CatalogModel newCatalog){
  assert (newCatalog!=null);
  _catalog=newCatalog;
}
}