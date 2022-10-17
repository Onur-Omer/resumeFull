import 'package:working/models/product.dart';

class ProductService{

  static ProductService _singleton=ProductService._internal();

  factory ProductService(){
    return _singleton;  //Factory arka planda bir tane instance oluşturuyor ve her çağrıldığında o instance yi gönderiyor **Singleton**
  }

  ProductService._internal();//Constructor

  static List<Product> products= [];

  static List<Product> getAll(){
    products.add(Product(1,"Acer",6000));
    products.add(Product(2,"Asus",7000));
    products.add(Product(3,"Hp",8000));
    return products;
  }
}