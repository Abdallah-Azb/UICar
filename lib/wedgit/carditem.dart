import 'package:flutter/material.dart';

class SymptomCard extends StatelessWidget {
  final String image;
  final String title;
  final bool isActive;

  const SymptomCard({
    Key key,
    this.image,
    this.title,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      decoration: BoxDecoration(
        // borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Column(
        children: <Widget>[
          Image.asset(
            image,
            height: 60,
            fit: BoxFit.fill,
          ),
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

class SymptomCardMark extends StatelessWidget {
  final String image;

  const SymptomCardMark({
    Key key,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Card(
        color: Colors.black,
        child: Image.asset(
          image,
          height: 50,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
