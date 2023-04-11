//https://pub.dev/packages/http/example
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

import 'example.dart';

//api: https://www.googleapis.com/books/v1/volumes?q=%7Bhttp%7D
//examples: https://github.com/google/json_serializable.dart/tree/master/example
void main(List<String> arguments) async {
  // This example uses the Google Books API to search for books about http.
  // https://developers.google.com/books/docs/overview
  var url = Uri.https('www.googleapis.com', '/books/v1/volumes', {'q': '{http}'});
  print("url=$url");

  // Await the http get response, then decode the json-formatted response.
  var response = await http.get(url);
  if (response.statusCode == 200) {
    var jsonResponse = convert.jsonDecode(response.body) as Map<String, dynamic>;
    Book book = Book.fromJson(jsonResponse);

    var itemCount = jsonResponse['totalItems'];
    print('Number of books about http: $itemCount.');

    print("book: $book");
  } else {
    print('Request failed with status: ${response.statusCode}.');
  }
}