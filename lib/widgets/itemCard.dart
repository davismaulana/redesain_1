// import 'package:flutter/material.dart';
// import 'package:redesain_1/API/api.dart';
// import 'card.dart';
// import 'package:http/http.dart' as http;

// Future<UserList> List() async {
//   final String apiUrl = "https://reqres.in/";
//   var response = await http
//       .post(Uri.parse(apiUrl));

//   if (response.statusCode == 200) {
//     final String responseString = response.body;

//     return userListFromJson(responseString);
//   } else {
//     return null;
//   }
// }

// class ItemCard extends StatelessWidget {
//   const ItemCard({
//     Key key,
//   }) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Column(
//         children: <Widget>[
//           CardStyle(
//             img: 'assets/hotels/hotel1.jpg',
//             title: 'Hotel Sunroute Plaza Sinjuku',
//             price: 'Rp.15 per hour',
//           ),

//           Container(
//               margin: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
//               decoration: BoxDecoration(
//                 border: Border(
//                   top: BorderSide(width: 1.0, color: Colors.black12)
//                 )
//               ),
//           ),

//           CardStyle(
//             img: 'assets/hotels/Makuhari.jpg',
//             title: 'APA Hotel Tokyo Bay Makuhari',
//             price: "Rp.15 per hour",
//           ),

//           Container(
//               margin: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
//               decoration: BoxDecoration(
//                 border: Border(
//                   top: BorderSide(width: 1.0, color: Colors.black12)
//                 )
//               ),
//           ),

//           CardStyle(
//             img: 'assets/hotels/shinagawa.jpg',
//             title: 'Shinagawa Prince Hotel',
//             price: "Rp.15 per hour",
//           ),

//           Container(
//               margin: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
//               decoration: BoxDecoration(
//                 border: Border(
//                   top: BorderSide(width: 1.0, color: Colors.black12)
//                 )
//               ),
//           ),

//           CardStyle(
//             img: 'assets/hotels/yokohama.jpg',
//             title: 'Yokohama Royal Park Hotel',
//             price: "Rp.15 per hour",
//           ),

//           Container(
//               margin: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
//               decoration: BoxDecoration(
//                 border: Border(
//                   top: BorderSide(width: 1.0, color: Colors.black12)
//                 )
//               ),
//           ),

//         ],
//       ),
//     );
//   }
// }