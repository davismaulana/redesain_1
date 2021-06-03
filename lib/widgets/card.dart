import 'package:flutter/material.dart';

class CardStyle extends StatelessWidget {
  final String title, img;
  final String price;

  const CardStyle({Key key, this.title, this.img, this.price}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            height: 65,
            width: 65,
            margin: EdgeInsets.only(left: 30, right: 10),
            decoration: BoxDecoration(
              border: Border.all(width: 2.0, color: Colors.black12),
              borderRadius: BorderRadius.circular(8),
              image:
                DecorationImage(
                  image: AssetImage(img),
                  fit: BoxFit.cover
                ),
            ),
          ),
          Expanded(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Text(
                      title,
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Text(
                      price, 
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
