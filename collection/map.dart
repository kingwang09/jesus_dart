void main(){
  Map<String, String> map = Map.of({'이름':"김딱딱", "나이": "unknown"});
  List<String> keys = map.keys.toList();
  List<String> values = map.values.toList();

  keys.forEach((element) => print("key: $element"));
  values.forEach((element) => print("value: $element"));
}