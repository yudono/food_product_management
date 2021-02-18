import 'package:flutter/material.dart';

class Allergen extends StatefulWidget {
  @override
  _AllergenState createState() => _AllergenState();
}

class _AllergenState extends State<Allergen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: BackButton(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text(
          'Allergen',
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
                              'A Glutenhaltinges Getreide',
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
                              'Krebstiere und daraus gewanneneerz',
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
                              'Eier und daraus gewonnene erz',
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
                              'Fishce und darous gewonnene',
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
                              'Erdnusse und daraus gewonneneerz',
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
                              'Soja (Bohnen) und daraus gewonnene erz)',
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
                              'Milchnund daraus gewonnene erz',
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
                              'Schalenfruchte',
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
                              'Sellerie and daraus gewoneneerz',
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
                              'Senf und daraus gewonnene erz',
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
                              'Sesamsomen und daraus gewonnene erz',
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
                              'Schwefeldioxid und shulphite',
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
                              'Lupinen und daraus gewonneneerz',
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
                              'Wechtiere und daraus gewonneneerz',
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
