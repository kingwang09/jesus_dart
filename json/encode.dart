
import 'dart:convert';

class Hello{
  String name;
  int age;

  Hello(this.name, this.age);
  @override
  String toString(){
    return '{"name"="$name", "age": $age}';
  }
}

void main(){
  Hello hello = Hello("Hello world", 1988);
  print(hello);

  //var json = jsonEncode(hello);//이건 안됨
  var json = jsonEncode(hello.toString());
  print(json);
}