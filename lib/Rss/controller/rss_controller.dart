import 'package:http/http.dart' as http;
import 'package:ntu_flutter/Rss/model/rss_item_template.dart';
import 'package:xml2json/xml2json.dart';
import 'dart:convert';
import 'package:get/get.dart';

String _rssURLVNExpress = "https://vnexpress.net/rss/tin-moi-nhat.rss";
String resourceName = "vnexpress";

class ControllerRss extends GetxController {
  final _rssList = <RSSItem>[].obs;
  List<RSSItem> get rssList => _rssList.value;

  @override
  void onInit() {
    super.onInit();
    readRss();
  }

  Future<void> readRss() async {
    _fetchRSS(_rssURLVNExpress).then((value) {
      _rssList.value = value?.map((rssMap) =>
          RSSItem.resourceNameOnly(rssResourceName: resourceName)
              .getFromJson(rssMap))
          .toList()
          ?? [];
      print(rssList[0].link);
      _rssList.refresh();
    }).catchError((error) {
      print(error);
    });
  }

  Future<List<dynamic?>> _fetchRSS(String rssURL) async {
    final res = await http.get(Uri.parse(rssURL));
    if (res.statusCode == 200) {
      final xml2Json = Xml2Json();
      xml2Json.parse(utf8.decode(res.bodyBytes));
      String rssJson = xml2Json.toParker();
      Map<String, dynamic> jsonData = jsonDecode(rssJson);
      return (jsonData["rss"]["channel"]["item"]);
    }
    return Future.error("Lỗi đọc RSS");
  }
}
