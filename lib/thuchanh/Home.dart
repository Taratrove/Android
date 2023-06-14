
import 'package:flutter/material.dart';

class LHome extends StatefulWidget {
  const LHome({Key? key}) : super(key: key);

  @override
  State<LHome> createState() => _LHomeState();
}

class _LHomeState extends State<LHome> {
  @override
  Widget build(BuildContext context) {
    var menu;
    return Scaffold(
       appBar: AppBar(
         title: Text("My Profile"),
         backgroundColor: Colors.blueGrey,
         elevation: 25.0,
         shadowColor: Colors.redAccent,

       ),
      body: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(8.0,0,8,0),
        child: Column(
          children: [
            Center(
              child: Container(
                child: Image.asset("images/wwhh.jpg"),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Text("Họ tên:",style: TextStyle(fontSize: 18))
              ],
            ),
            Row(
              children: [
                Text("Nguyễn Tiến Dũng",
                    style:
                    TextStyle(fontSize: 20,color: Colors.blue, fontWeight: FontWeight.bold )
                ),
              ],
            ),
            SizedBox(height: 18),
            Row(
              children: [
                Text("Ngày sinh:",style: TextStyle(fontSize: 18))
              ],
            ),
            Row(
              children: [
                Text("31/10/2002", style:TextStyle(fontSize: 30))
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Text("Quê quán:",style: TextStyle(fontSize: 18))
              ],
            ),
            Row(
              children: [
                Text("Đại Đức - Kim Thành - Hải Dương",
                    style: TextStyle(fontSize: 30)),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Text("Sở thích:",style: TextStyle(fontSize: 18))
              ],
            ),
            Column(
              children: [
                Text("Cầu lông, đọc sách, nghe nhạc, chơi game, cờ vua",
                  style:
                  TextStyle(fontSize: 30, fontStyle: FontStyle.italic,),

                ),
              ],
            ),
            Row(
              children: [
                Column(
                  children: [
                    Icon(Icons.favorite),
                    Text('Favorite'),
                  ],
                ),
                SizedBox(width: 10),
                Column(
                  children: [
                    Icon(Icons.thumb_up),
                    Text('Like'),
                  ],
                ),
                SizedBox(width: 10),
                Column(
                  children: [
                    Icon(Icons.share),
                    Text('Share'),
                  ],
                ),
              ],
            )
          ],
        ),
      )
    );
  }
}
