class Hello{
  int? age;
  String? name;
  //생성자 사용
  //명시적 생성자
  //상수 생성자
}

void main(){
  var hello = Hello();
  print("age: ${hello.age}, name=${hello.name}"); //npe는 없는듯.
  hello.age = 35;
  hello.name = "다니엘";

  print(hello);
  print("age: ${hello.age}, name=${hello.name}");
}