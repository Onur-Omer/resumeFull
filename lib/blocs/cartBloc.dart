import 'dart:async';

import 'package:working/data/cartService.dart';
import 'package:working/models/cart.dart';

class CartBloc {

  //Future asenkron çalışan fonk. bittiğinde işlem yapar ve döngü biter
  //StreamController asenkron çalışır ve fonk. tamamlandığında işlem yapar ve döngü halinde tekrar devam eder
  final cartStreamController = StreamController.broadcast();

  get getStream => cartStreamController.stream;

  addToCart(Cart cart){
    CartService.addToCart(cart);
    cartStreamController.sink.add(CartService.getCart());  //Sink ile güncellenmesi gereken stateleri söylüyoruz
  }

  removeToCart(Cart cart){
    CartService.removeToCart(cart);
    cartStreamController.sink.add(CartService.getCart());  //Sink ile güncellenmesi gereken stateleri söylüyoruz
  }

  getCart(){
    return CartService.getCart();
  }

}

final cartBloc =CartBloc();