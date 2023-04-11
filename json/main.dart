//https://pub.dev/packages/http/example
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class Item{
  String? kind;

  Item(this.kind);
}

void main(List<String> arguments) async {
  // This example uses the Google Books API to search for books about http.
  // https://developers.google.com/books/docs/overview
  var url = Uri.https('www.googleapis.com', '/books/v1/volumes', {'q': '{http}'});
  print("url=$url");

  // Await the http get response, then decode the json-formatted response.
  var response = await http.get(url);
  if (response.statusCode == 200) {
    var jsonResponse = convert.jsonDecode(response.body) as Map<String, dynamic>;
    var itemCount = jsonResponse['totalItems'];
    var items = jsonResponse['items'];
    print('Number of books about http: $itemCount.');
    print(items.runtimeType);
    print('first items: ${items[0]}');
    print('first items type: ${items[0].runtimeType}');
    print("first item.id: ${items[0]?.id}");

    //List<Item> convertedItems = convert.jsonDecode(items) as List<Item>;
    //print("converted items: $convertedItems");
  } else {
    print('Request failed with status: ${response.statusCode}.');
  }
}