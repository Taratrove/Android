import 'package:flutter/material.dart';
import 'package:ntu_flutter/Rss/pages/page_rss.dart';
import 'package:ntu_flutter/Rss_hh/pageweb.dart';
import 'package:ntu_flutter/form/json/page_listphoto.dart';
import 'package:ntu_flutter/form/page_counter.dart';
import 'package:ntu_flutter/sqflite/page_home_sqlite.dart';
import 'package:ntu_flutter/thuchanh/GetX.dart';
import 'package:ntu_flutter/thuchanh/Gridview.dart';
import 'package:ntu_flutter/thuchanh/Home.dart';
import 'package:ntu_flutter/thuchanh/catalog/catalog_app.dart';
import 'package:ntu_flutter/thuchanh/drawer_button.dart';
import 'package:ntu_flutter/thuchanh/list_view.dart';
import 'package:ntu_flutter/thuchanh/page_form_mathang.dart';

import 'connectfirebase/wiget_connect_firebase.dart';
import 'create_form_home/drawer_button.dart';

class MainNemu extends StatelessWidget {
  const MainNemu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HOME'),

      ),
      body: Center(
        child: Column(
          children: [
            buildRouteButton(context, childText: "Main", destination: LHome()),
            buildRouteButton(context, childText: "Grid view", destination: MyGridView()),
            buildRouteButton(context, childText: "ADD Hàng", destination: PageFromMatHang()),
            buildRouteButton(context, childText: "Counter", destination: CounterAPP()),
            buildRouteButton(context, childText: "Get-x", destination: Getx()),
            buildRouteButton(context, childText: "Darwer-Button", destination: Draton()),
            buildRouteButton(context, childText: "List-view", destination: listview()),
            buildRouteButton(context, childText: "Catalog", destination: CatsLog()),
            buildRouteButton(context, childText: "Json", destination: pageListphoto62()),
            buildRouteButton(context, childText: "SQLITE", destination: PageListUserSQLite()),
            // buildRouteButton(context, childText: "FireBase", destination: MyFirebaseConnect()),
            // buildRouteButton(context, childText: "Prosonal Information", destination: HomeDrawer()),
            buildRouteButton(context, childText: "Rss", destination: PageRss()),

          ],
        ),
      ),
    );
  }

  Container buildRouteButton(BuildContext context, {required String childText ,required Widget destination}) {
    return Container(
            width: 150,
            child: ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => destination));
            },
                child: Text(childText)),
          );
  }
}
