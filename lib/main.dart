import 'package:flutter/material.dart';
import 'package:working/screens/cartScreen.dart';
import 'package:working/screens/productListScreen.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}
""
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/" :(BuildContext context)=>ProductListScreen(),
        "cart":(BuildContext context)=>CartScreen(),
      },
      initialRoute: "/",
    );
  }

}
