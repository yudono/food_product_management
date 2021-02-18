import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// import page
import 'page/product.dart';
import 'page/editproduct.dart';
import 'page/categoryselect.dart';
import 'page/productselect.dart';
import 'page/allergen.dart';
import 'page/addaptives.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setPreferredOrientations([
    //   DeviceOrientation.portraitUp,
    //   DeviceOrientation.portraitDown,
    // ]);
    return MaterialApp(
      title: 'Food App',
      initialRoute: '/',
      routes: {
        '/': (context) => Product(),
        '/editproduct': (context) => EditProduct(),
        '/categoryselect': (context) => CategorySelect(),
        '/productselect': (context) => ProductSelect(),
        '/allergenselect': (context) => Allergen(),
        '/addaptivesselect': (context) => Addaptives(),
      },
      // home: Product(),
    );
  }
}
