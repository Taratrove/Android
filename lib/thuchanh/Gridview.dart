
import 'package:flutter/material.dart';


List<String> list = [
  "assets/images/projectwarwick.jpg",
  "assets/images/projectwarwick.jpg",
  "assets/images/warwickhh.jpg",
  "assets/images/warwickhh.jpg",
];

class MyGridView extends StatelessWidget {
  const MyGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Gridview"),
      ),
      body: GridView.extent(
          maxCrossAxisExtent: 150,
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
      children: List.generate(
          list.length,
              (index) => GestureDetector(
                child: Container(
                  child: Image.asset(list[index]),
                ),
              )),







        //   children: list.map(
      //           (e) => GestureDetector(
      //             onTap: (){
      //             },
      //             child:  Container(child: Image.asset(e),)
      //           )
      // ).toList(),
    )
    );
  }
}
