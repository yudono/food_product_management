import 'package:flutter/material.dart';
import '../component/cardselect.dart';

class ProductSelect extends StatefulWidget {
  @override
  _ProductSelectState createState() => _ProductSelectState();
}

class _ProductSelectState extends State<ProductSelect> {
  Map<String, String> data = {
    'Burger': './assets/burger-1.png',
    'Pizza': './assets/pizza-1.png',
    'Soda': './assets/soda-can-1.png',
    'Salad': './assets/salad-1.png',
    'Kebab': './assets/kebab-1.png',
    'Hotdog': './assets/hotdog-1.png',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: BackButton(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text(
          'Select Product',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(32.0),
          color: Color(0xFFFDF2E0),
          child: SingleChildScrollView(
            child: ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: data.keys.toList().length,
              itemBuilder: (context, index) {
                // print(data[data.keys.toList()[index]]);
                return CardSelect(
                    name: data.keys.toList()[index],
                    image: data[data.keys.toList()[index]]);
              },
            ),
          ),
        ),
      ),
    );
  }
}
