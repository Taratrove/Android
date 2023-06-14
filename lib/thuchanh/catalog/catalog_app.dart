
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'catalogdata.dart';

class CatsLog extends StatelessWidget {
  const CatsLog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create:(context) => CatalogN5(),
            lazy: true,
            child: const MaterialApp(
              debugShowCheckedModeBanner: false,
              home: PageCataLogN5(),
            ),) ;
  }
}
class PageCataLogN5 extends StatelessWidget {
  const PageCataLogN5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Consumer<CatalogN5>(
        builder: (context, catalog, child) => Padding(
          padding: const EdgeInsets.fromLTRB(8.0,0,8,0),
          child: ListView.separated(
              itemBuilder: (context, index) => ListTile(
                leading: Text("${index +1}"),
                title: Text("${catalog.listMathang[index].tenMH}"),
                trailing: Text("${catalog.listMathang[index].gia}"),
              ),
              separatorBuilder: (context, index) => Divider(thickness: 2),
              itemCount: catalog.mathangs.length
          ),
        )
    )
    );
  }
}

