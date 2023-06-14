// import 'package:flutter/material.dart';
//
//
// List<String> list = [
//   "assets/images/duahau.jpg",
// ];
//
//
// class PageWeb extends StatelessWidget {
//   const PageWeb({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text("test"),
//         ),
//       body: Container(
//     child: GridView.extent(
//         maxCrossAxisExtent: 150,
//         crossAxisSpacing: 5,
//         mainAxisSpacing: 5,
//         children: List.generate(
//             list.length,
//                 (index) => GestureDetector(
//               child: Container(
//                 child: Image.asset(list[index]),
//               ),
//             )),
//         )
//         )
//     );
//   }
// }
