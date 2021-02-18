import 'package:flutter/material.dart';

class CardProduct extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 6),
      child: Container(
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              flex: 1,
              child: Image.asset('./assets/image-2.png'),
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: EdgeInsets.only(left: 12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Soup Lada',
                      style: TextStyle(
                        color: Color(0xFFF49609),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text.rich(
                      TextSpan(
                        text: 'Price ',
                        children: [
                          TextSpan(
                            text: '21.05€',
                            style: TextStyle(
                              color: Color(0xFFF49609),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text('This soup is suitable..'),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Color(0xFFF49609),
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: GestureDetector(
                child: Icon(
                  Icons.edit,
                  color: Colors.white,
                  size: 18,
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/editproduct');
                },
              ),
            ),
            SizedBox(width: 8.0),
            Container(
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.red[100],
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: GestureDetector(
                child: Icon(
                  Icons.delete,
                  color: Colors.red,
                  size: 18,
                ),
                onTap: null,
              ),
            )
          ],
        ),
      ),
    );
  }
}
