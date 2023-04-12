//https://pub.dev/packages/http/example
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

void main(List<String> arguments) async {
  // This example uses the Google Books API to search for books about http.
  // https://developers.google.com/books/docs/overview
  var url = Uri.http('20.196.223.212:9999', '/greet', {'name': 'Hello'});
  print("url=$url");

  // Await the http get response, then decode the json-formatted response.
  var response = await http.get(url);
  if (response.statusCode == 200) {
    var jsonResponse = convert.jsonDecode(response.body) as Map<String, dynamic>;
    print('jsonResponse: $jsonResponse.');
  } else {
    print('Request failed with status: ${response.statusCode}.');
  }
}