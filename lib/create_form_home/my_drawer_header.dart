import 'package:flutter/material.dart';

class MyHeaderDrawer extends StatefulWidget {
  const MyHeaderDrawer({Key? key}) : super(key: key);

  @override
  State<MyHeaderDrawer> createState() => _MyHeaderDrawerState();
}

class _MyHeaderDrawerState extends State<MyHeaderDrawer> {
  @override
  Widget build(BuildContext context) {
    //container dùng để bọc một nội dung
    return Container(
      color: Colors.cyan,
      width: double.infinity,
      height: 200,
      //padding khoảng cách khung 20
      padding: EdgeInsets.only(top: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10.0),
            height: 70,
            decoration: BoxDecoration(
              // tạo hình cho ảnh (hình tròn)
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage("images/wwpj.jpg")
              )
            ),
          ),
          Text(
            "hide on dảkk",
            style: TextStyle(color: Colors.white,fontSize: 20),
          ),
          Text("doclang@gmail.com",
          style: TextStyle(
            color: Colors.indigo,
            fontSize: 14,
          ),)
        ],
      ),
    );
  }
}
