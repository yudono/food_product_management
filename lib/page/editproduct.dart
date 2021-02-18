import 'package:flutter/material.dart';

class EditProduct extends StatefulWidget {
  @override
  _EditProductState createState() => _EditProductState();
}

class _EditProductState extends State<EditProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: BackButton(color: Colors.black),
        title: Text(
          'Edit Product',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 28.0,
                color: Color(0xFFFDF2E0),
              ),
              Container(
                color: Color(0xFFFEFDFC),
                padding: EdgeInsets.all(32.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset(
                        './assets/image-1.png',
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 32.0),
                    Text('Product Name', style: TextStyle(fontSize: 18.0)),
                    SizedBox(height: 8.0),
                    TextFormField(
                      initialValue: 'Burger Tahu',
                      decoration: InputDecoration(
                        hintText: 'Name Product',
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                          borderSide: BorderSide(color: Colors.grey[400]),
                        ),
                      ),
                    ),
                    SizedBox(height: 16.0),
                    Text('Brand', style: TextStyle(fontSize: 18.0)),
                    SizedBox(height: 8.0),
                    TextFormField(
                      initialValue: 'McDonald\'s',
                      decoration: InputDecoration(
                        hintText: 'Name Brand',
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                          borderSide: BorderSide(color: Colors.grey[400]),
                        ),
                      ),
                    ),
                    SizedBox(height: 16.0),
                    Text('Category', style: TextStyle(fontSize: 18.0)),
                    SizedBox(height: 8.0),
                    GestureDetector(
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          border: Border.all(color: Colors.grey[400]),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Junk Food'),
                            Icon(Icons.chevron_right),
                          ],
                        ),
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, '/categoryselect');
                      },
                    ),
                    SizedBox(height: 16.0),
                    Text('Description Product',
                        style: TextStyle(fontSize: 18.0)),
                    SizedBox(height: 8.0),
                    TextFormField(
                      maxLines: 4,
                      initialValue:
                          'Hamburger is a type of food in the form of round bread sliced in half and filled with patty in the middle which is usually made of meat, then...',
                      decoration: InputDecoration(
                        hintText: 'Description',
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                          borderSide: BorderSide(color: Colors.grey[400]),
                        ),
                      ),
                    ),
                    SizedBox(height: 16.0),
                    Text('Product Short Description',
                        style: TextStyle(fontSize: 18.0)),
                    SizedBox(height: 8.0),
                    TextFormField(
                      initialValue:
                          'The burgers have soft buns, fresh vegetables ...',
                      decoration: InputDecoration(
                        hintText: 'Description',
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                          borderSide: BorderSide(color: Colors.grey[400]),
                        ),
                      ),
                    ),
                    SizedBox(height: 8.0),
                    GestureDetector(
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          border: Border.all(color: Colors.grey[400]),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Select Additives'),
                            Icon(Icons.chevron_right),
                          ],
                        ),
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, '/addaptivesselect');
                      },
                    ),
                    SizedBox(height: 8.0),
                    GestureDetector(
                        child: Container(
                          width: double.infinity,
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.0),
                            border: Border.all(color: Colors.grey[400]),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Select Allergen'),
                              Icon(Icons.chevron_right),
                            ],
                          ),
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, '/allergenselect');
                        }),
                    SizedBox(height: 16.0),
                    Text('Price', style: TextStyle(fontSize: 18.0)),
                    SizedBox(height: 8.0),
                    Container(
                      color: Color(0xFFFDF2E0),
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Text('Variant 1'),
                                SizedBox(height: 8.0),
                                Container(
                                  child: DropdownButtonFormField(
                                    isExpanded: true,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                        borderSide: BorderSide.none,
                                      ),
                                      hintText: 'Select Variant',
                                      fillColor: Colors.white,
                                      filled: true,
                                    ),
                                    items: [
                                      DropdownMenuItem(
                                        child: Text('Vegetarian'),
                                        value: 0,
                                      ),
                                      DropdownMenuItem(
                                        child: Text('Non Vegetarian'),
                                        value: 0,
                                      ),
                                    ],
                                    onChanged: (val) {},
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(width: 6.0),
                          Expanded(
                            child: Column(
                              children: [
                                Text('Price'),
                                SizedBox(height: 8.0),
                                TextFormField(
                                  initialValue: '21.05€',
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12.0),
                                      borderSide: BorderSide.none,
                                    ),
                                    hintText: 'Price',
                                    fillColor: Colors.white,
                                    filled: true,
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(width: 6.0),
                          Expanded(
                            child: Column(
                              children: [
                                Text('Min Quatity'),
                                SizedBox(height: 8.0),
                                TextFormField(
                                  initialValue: '5',
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12.0),
                                      borderSide: BorderSide.none,
                                    ),
                                    hintText: 'Min Quatity',
                                    fillColor: Colors.white,
                                    filled: true,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            color: Color(0xFFFDEFDA),
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
                    Divider(color: Color(0xFFCCCCCC)),
                    Row(children: [
                      Expanded(
                        child: GestureDetector(
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey[100],
                                  blurRadius: 4,
                                  offset: Offset(4, 4),
                                ),
                              ],
                            ),
                            padding: EdgeInsets.all(12.0),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                'Delete',
                                style: TextStyle(
                                  color: Color(0xFFF49609),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          onTap: () {},
                        ),
                      ),
                      SizedBox(width: 24),
                      Expanded(
                        child: GestureDetector(
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
                                'Save',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          onTap: () {},
                        ),
                      ),
                    ]),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
