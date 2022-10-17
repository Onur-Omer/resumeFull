import 'package:working/models/cart.dart';

class CartService{
  static CartService _singleton=CartService._internal();

  factory CartService(){
    return _singleton;
  }

  CartService._internal();

  static List<Cart> cartItems =[];

  static addToCart(Cart cart){
    cartItems.add(cart);
  }

  static removeToCart(Cart cart){
    cartItems.remove(cart);
  }

  static getCart(){
    return cartItems;
  }

}