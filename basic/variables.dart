String makeName(){
  print("makeName initialize....");
  return "late 변수는 언제 만들어지려나...";
}

void main(){
  var name1 = "james Park";//var로 했지만 String이라는 것을 인식하는듯.
  Object name2 = "james Park";//Object로 명시한 경우, String이라는 것을 인지못하게됨.
  String name3 = "james Park";//명시적으로 지정도 가능

  name1 = name1.toLowerCase();
  name3 = name3.toLowerCase();

  print("$name1 , $name2, $name3");


  var init; //null로 초기화됨.
  int? nullableInt; //nullable할 경우, 변수 타입 뒤에 ?를 붙인다.
  print("init: $init");
  assert(init == null);

  //후기 변수: 사용할지 않할지 모르고 리소스가 많이 드는 경우, late 지정하여 진짜 사용할 때 초기화
  late String lateInit = makeName();
  print("--------------------------");
  print("아직 late변수를 호출하지 않았겠지??");
  print("--------------------------");
  print("late변수는 사용할 때 호출된다던데??");

  print("이제 호출되겠지? $lateInit");

  //final 최종 변수
  final finalValue = "이것은 마지막 값이다. 바꿀 수 없네";
  //finalValue = "변경하려면 컴파일 타임에서 에러남";

  //const 컴파일 타임 상수 변수 선언 -> 이게 잘 이해가 안감.

}