import 'package:flutter/material.dart';
import '../component/cardselect.dart';

class CategorySelect extends StatefulWidget {
  @override
  _CategorySelectState createState() => _CategorySelectState();
}

class _CategorySelectState extends State<CategorySelect> {
  Map<String, String> data = {
    'Junk Food': './assets/fast-food-1.png',
    'Healthy Food': './assets/healthy-1.png',
    'Drink': './assets/soda-can-1.png',
    'Cake': './assets/cake-1.png',
    'Ice Cream': './assets/ice-cream-1.png',
    'Sea Food': './assets/shrimp-1.png',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: BackButton(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text(
          'Select Category',
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
                return GestureDetector(
                  child: CardSelect(
                    name: data.keys.toList()[index],
                    image: data[data.keys.toList()[index]],
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, '/productselect');
                  },
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
