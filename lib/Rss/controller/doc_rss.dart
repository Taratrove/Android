import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:xml2json/xml2json.dart';



String _rssURLVNEXpress = "https://vnexpress.net/rss/tin-moi-nhat.rss";
void main() async{
  final respone = await http.get(Uri.parse(_rssURLVNEXpress));
 if(respone.statusCode == 200){
   //print(respone.body);
   final xml2json = Xml2Json();
   xml2json.parse(utf8.decode(respone.bodyBytes));
   String rssJson = xml2json.toParker();
   //print(rssJson);
   Map<String, dynamic> jsonData = jsonDecode(rssJson);
   var testData = jsonData["rss"]["channel"]["item"][1];
   print(testData);
   print(testData["title"]);
   print(testData["link"]);
   print(testData["description"]);
   print(testData['pubDate']);

 }
}