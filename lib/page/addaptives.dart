import 'package:flutter/material.dart';

class Addaptives extends StatefulWidget {
  @override
  _AddaptivesState createState() => _AddaptivesState();
}

class _AddaptivesState extends State<Addaptives> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: BackButton(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text(
          'Addaptives',
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
                padding: EdgeInsets.all(32.0),
                color: Colors.white,
                child: ListView(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: [
                    ListTile(
                      title: Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Min Fabstoff',
                              style: TextStyle(fontWeight: FontWeight.w400),
                            ),
                          ),
                          Switch(
                            value: false,
                            onChanged: (value) {},
                          ),
                        ],
                      ),
                    ),
                    ListTile(
                      title: Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Min Konservierungsstoff',
                              style: TextStyle(fontWeight: FontWeight.w400),
                            ),
                          ),
                          Switch(
                            value: true,
                            onChanged: (value) {},
                          ),
                        ],
                      ),
                    ),
                    ListTile(
                      title: Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Min Antioxiddationsmittel',
                              style: TextStyle(fontWeight: FontWeight.w400),
                            ),
                          ),
                          Switch(
                            value: false,
                            onChanged: (value) {},
                          ),
                        ],
                      ),
                    ),
                    ListTile(
                      title: Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Min Geschmacksverstarker',
                              style: TextStyle(fontWeight: FontWeight.w400),
                            ),
                          ),
                          Switch(
                            value: false,
                            onChanged: (value) {},
                          ),
                        ],
                      ),
                    ),
                    ListTile(
                      title: Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Min Geschwefelt',
                              style: TextStyle(fontWeight: FontWeight.w400),
                            ),
                          ),
                          Switch(
                            value: true,
                            onChanged: (value) {},
                          ),
                        ],
                      ),
                    ),
                    ListTile(
                      title: Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Min Geschwarzt',
                              style: TextStyle(fontWeight: FontWeight.w400),
                            ),
                          ),
                          Switch(
                            value: false,
                            onChanged: (value) {},
                          ),
                        ],
                      ),
                    ),
                    ListTile(
                      title: Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Min Min Phosphat',
                              style: TextStyle(fontWeight: FontWeight.w400),
                            ),
                          ),
                          Switch(
                            value: false,
                            onChanged: (value) {},
                          ),
                        ],
                      ),
                    ),
                    ListTile(
                      title: Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Min Milcheiwei (Bei Fleischerzugnissen)',
                              style: TextStyle(fontWeight: FontWeight.w400),
                            ),
                          ),
                          Switch(
                            value: false,
                            onChanged: (value) {},
                          ),
                        ],
                      ),
                    ),
                    ListTile(
                      title: Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Koffein Halting',
                              style: TextStyle(fontWeight: FontWeight.w400),
                            ),
                          ),
                          Switch(
                            value: true,
                            onChanged: (value) {},
                          ),
                        ],
                      ),
                    ),
                    ListTile(
                      title: Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Chinin Halting',
                              style: TextStyle(fontWeight: FontWeight.w400),
                            ),
                          ),
                          Switch(
                            value: false,
                            onChanged: (value) {},
                          ),
                        ],
                      ),
                    ),
                    ListTile(
                      title: Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Min Subbungsmittel',
                              style: TextStyle(fontWeight: FontWeight.w400),
                            ),
                          ),
                          Switch(
                            value: true,
                            onChanged: (value) {},
                          ),
                        ],
                      ),
                    ),
                    ListTile(
                      title: Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Min Gewachst',
                              style: TextStyle(fontWeight: FontWeight.w400),
                            ),
                          ),
                          Switch(
                            value: false,
                            onChanged: (value) {},
                          ),
                        ],
                      ),
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
            ],
          ),
        ),
      ),
    );
  }
}
