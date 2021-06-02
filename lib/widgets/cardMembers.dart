import 'package:flutter/material.dart';

class CardMembers extends StatelessWidget {
  final String imgMembers;

  const CardMembers({Key key, this.imgMembers}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            height: 45,
            width: 45,
            margin: EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              border: Border.all(width: 1.0, color: Colors.black12),
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(imgMembers),
                fit: BoxFit.cover
              )
            ),
          )
        ],
      ),
    );
  }
}