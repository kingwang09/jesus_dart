//https://pub.dev/packages/http/example
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;


void get() async{
  //api localhost(spring boot)
  var url = Uri.http('localhost:9999', '/greet', {'name': 'kingwang09'});
  print("url=$url");

  // Await the http get response, then decode the json-formatted response.
  var response = await http.get(url);
  if (response.statusCode == 200) {
    var jsonResponse = convert.jsonDecode(response.body) as Map<String, dynamic>;
    print('response of http: $jsonResponse.');
  } else {
    print('Request failed with status: ${response.statusCode}.');
  }
}

void post() async{
  //api localhost(spring boot)
  print("save test");
  var url = Uri.http('localhost:9999', '/greet');
  print("url=$url");

  var body = convert.jsonEncode({"name": "kingwang09", "message": "hello world!!"});//json으로 convert를 해줘야 정상 인식하는군..
  print("body=$body");

  // Await the http get response, then decode the json-formatted response.
  var response = await http.post(url, headers: {"Content-Type": "application/json"}, body: body);


  if (response.statusCode == 200) {
    var jsonResponse = convert.jsonDecode(response.body) as Map<String, dynamic>;
    print('response of http: $jsonResponse.');
  } else {
    print('Request failed with status: ${response.statusCode}.');
  }
}

void main(List<String> arguments) async {
  //get();
  post();

}