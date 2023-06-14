import 'package:flutter/material.dart';

class Draton extends StatelessWidget {
  const Draton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        child: ListView(
          children: [
            ListTile(
            title: Text("item 1"),
              onTap: () {},
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Drawer-Botton"),

      ),
    );

  }
}
