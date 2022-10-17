import 'dart:async';

import 'package:working/data/productService.dart';

class ProductBloc{
  final productStreamController = StreamController.broadcast();

  get getStream => productStreamController.stream;

  getAll(){
    return ProductService.getAll();

  }
}
final productBloc=ProductBloc();