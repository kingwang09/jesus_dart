//https://pub.dev/packages/http/example
import 'dart:convert' as convert;
import 'dart:convert';
import 'package:http/http.dart' as http;

void main(List<String> arguments) async {
  // This example uses the Google Books API to search for books about http.
  // https://developers.google.com/books/docs/overview
  var url = Uri.http('kingwang09.koreacentral.cloudapp.azure.com:9999', '/bible/text', {'version': 'KOREAN_IMPROVE', 'index':'롬', 'chapter':'1'});
  print("url=$url");

  // Await the http get response, then decode the json-formatted response.
  var response = await http.get(url);
  if (response.statusCode == 200) {
    //
    var jsonResponse = utf8.decode(response.bodyBytes);
    print('jsonResponse: $jsonResponse.');

    var jsonResponseList = convert.jsonDecode(jsonResponse) as List<dynamic>;
    print('jsonResponse: $jsonResponseList');

    for(var json in jsonResponseList){
      print('value : $json');
    }
  } else {
    print('Request failed with status: ${response.statusCode}.');
  }
}