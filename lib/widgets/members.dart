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
            imgMembers: "assets/members/hinano.jpg",
          ),
          CardMembers(
            imgMembers: "assets/members/kato.jpg",
          ),
          CardMembers(
            imgMembers: "assets/members/rin.jpg",
          ),
          CardMembers(
            imgMembers: "assets/members/yui.jpg",
          ),
          
        ],
      ), 
    );
  }

}