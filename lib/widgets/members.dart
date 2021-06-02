import 'package:flutter/material.dart';
import 'package:redesain_1/widgets/cardMembers.dart';

class members extends StatelessWidget {

  const members({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(
        children: [
          CardMembers(
            imgMembers: "assets/home/cewek.jpg",
          ),
          CardMembers(
            imgMembers: "assets/home/cewek.jpg",
          ),
          CardMembers(
            imgMembers: "assets/home/cewek.jpg",
          ),
          CardMembers(
            imgMembers: "assets/home/cewek.jpg",
          ),
          CardMembers(
            imgMembers: "assets/home/cewek.jpg",
          ),
          
        ],
      ), 
    );
  }

}