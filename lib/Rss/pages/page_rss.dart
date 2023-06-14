
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ntu_flutter/Rss/controller/rss_controller.dart';
import 'package:ntu_flutter/Rss/pages/webpage.dart';

class PageRss extends StatelessWidget {
  PageRss({Key? key}) : super(key: key);
  var controller = Get.put(ControllerRss());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page Rss"),
      ),
      // tự động cập nhật
      body: RefreshIndicator(
        onRefresh: () => controller.readRss(),
        child: GetX<ControllerRss>(
          init: controller,
          builder: (controller) {
            var listRss = controller.rssList;
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        GestureDetector(
                          onTap: () => Get.to(MyWebPage(url: listRss[index].link!)),
                          child: Row(
                            children: [
                              Expanded(
                                  flex: 1,
                                  child: Container(
                                      child:
                                      _getImage(listRss[index].imageUrl))),
                              Expanded(
                                  flex: 2,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                        child: Text(listRss[index].title!, style: TextStyle(fontSize: 20, color: Colors.blue),)),
                                  )),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(listRss[index].description!),
                        ),
                      ],
                    );
                  },
                  separatorBuilder: (context, index) => Divider(thickness: 2,),
                  itemCount: listRss.length),
            );
          },
        ),
      ),
    );
  }

  Widget _getImage(String? url) {
    if (url != null) {
      return Image.network(url, fit: BoxFit.fitWidth);
    }
    return Center(
      child: Column(
        children: [
          Icon(Icons.image),
          Text("No Image!"),
        ],
      ),
    );
  }
}
