import 'package:flutter/material.dart';
import '../component/cardproduct.dart';

class Product extends StatefulWidget {
  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'Product',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.all(32.0),
            color: Color(0xFFFDF2E0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Container(
                        padding: EdgeInsets.only(right: 12),
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: BorderSide.none,
                            ),
                            hintText: 'Search',
                            fillColor: Colors.white,
                            filled: true,
                            prefixIcon: Icon(Icons.search),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: DropdownButtonFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide.none,
                          ),
                          hintText: 'Purchase',
                          fillColor: Colors.white,
                          filled: true,
                        ),
                        items: [
                          DropdownMenuItem(
                            child: Text('Cheapest'),
                            value: 0,
                          ),
                          DropdownMenuItem(
                            child: Text('Expensive'),
                            value: 1,
                          ),
                        ],
                        value: null,
                        isDense: true,
                        onChanged: (val) {},
                      ),
                    )
                  ],
                ),
                SizedBox(height: 16.0),
                Text(
                  'Healthy Food',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 16.0),

                // card
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return CardProduct();
                  },
                ),
                SizedBox(height: 16.0),
                Text(
                  'Burger',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 16.0),

                // card
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return CardProduct();
                  },
                ),

                SizedBox(height: 12.0),

                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(100.0),
                      ),
                      child: GestureDetector(
                        child: Icon(
                          Icons.add,
                          color: Color(0xFFF49609),
                        ),
                        onTap: () {},
                      ),
                    ),
                    SizedBox(width: 8.0),
                    Text(
                      'Add New Category',
                      style: TextStyle(
                        color: Color(0xFFF49609),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 12.0),

                GestureDetector(
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Color(0xFFF49609),
                    ),
                    padding: EdgeInsets.all(12.0),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Add Product',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  onTap: () {},
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
