import 'package:flutter/material.dart';

class CardSelect extends StatefulWidget {
  String image;
  String name;

  CardSelect({this.image, this.name});

  @override
  _CardSelectState createState() => _CardSelectState();
}

class _CardSelectState extends State<CardSelect> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 6.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.white,
                padding: EdgeInsets.all(8.0),
                child: Container(
                  padding: EdgeInsets.all(14.0),
                  decoration: BoxDecoration(
                    color: Color(0xFFFCF0E0),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Image.asset(this.widget.image),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Padding(
                padding: EdgeInsets.only(left: 12.0),
                child: Text(
                  this.widget.name,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            IconButton(
              icon: Icon(Icons.chevron_right),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
