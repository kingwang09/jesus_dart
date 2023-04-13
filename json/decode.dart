
import 'dart:convert';

void main(){
  var jsonString = '[{"score": 30}, {"score":99}]';
  var scores = jsonDecode(jsonString);

  print(scores is List);//true
  print(scores[0] is Map);

  for(var map in scores){
    print(map);
    print(map["score"]);
  }
}