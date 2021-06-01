import 'package:flutter/material.dart';
import 'card.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          CardStyle(
            img: 'assets/channel/aimer.jpg',
            title: 'Aimer',
            price: '1,4 million subscriber',
          ),

          Container(
              margin: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(width: 1.0, color: Colors.black12)
                )
              ),
          ),

          CardStyle(
            img: 'assets/home/cewek.jpg',
            title: 'Zenith Tennis Center',
            price: "Rp.15 per hour",
          ),

          Container(
              margin: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(width: 1.0, color: Colors.black12)
                )
              ),
          ),

          CardStyle(
            img: 'assets/home/cewek.jpg',
            title: 'Zenith Tennis Center',
            price: "Rp.15 per hour",
          ),

          Container(
              margin: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(width: 1.0, color: Colors.black12)
                )
              ),
          ),

          CardStyle(
            img: 'assets/home/cewek.jpg',
            title: 'Zenith Tennis Center',
            price: "Rp.15 per hour",
          ),

          Container(
              margin: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(width: 1.0, color: Colors.black12)
                )
              ),
          ),

          CardStyle(
            img: 'assets/home/cewek.jpg',
            title: 'Zenith Tennis Center',
            price: "Rp.15 per hour",
          ),
        ],
      ),
    );
  }
}