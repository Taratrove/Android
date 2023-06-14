import 'dart:math';

import 'package:flutter/material.dart';


// list
List <String> list =[
  'táo',
  'chuối',
  'dưa hấu',
  'nho',
  'đu đủ',
  'thanh long'
];




class listview extends StatelessWidget {
  const listview({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("danh sách") ,

      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(8.0,0,8,0),
        child: ListView.separated(
            itemBuilder: (context, index) => ListTile(
              leading: Text("${index +1}"),
              title: Text(list[index]),
              trailing: Text("${Random().nextInt(100)}kg"),
              subtitle: Text("sức khoẻ trên hết"),
            ),
            separatorBuilder: (context, index) => Divider(thickness: 2),
            itemCount: list.length),
      )

    );
  }
}
