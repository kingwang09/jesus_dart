String findName(String? name){
  //nullable한 name이 null이면 "Guest"로 반환
  //return name == null ? "Guest" : name;

  //위 코드가 아래 내용으로 돌아가는 거지.
  return name?? "Guest";
}

void main(){
  //default value 지정
  print("what is your name? "+ findName(null));
  print("what is your name? "+ findName('daniel'));


  //유형 테스트 연산자

  //캐스케이드 표기법
    //클래스할 때 추가 가능할 듯
    //간단히 말하면 builder 개념인 것으로 보

  //변수 접근 시 뒤에 ?를 붙이면 조건부 접근이 되게된다.
  //값이 있을 때만 수행함.
}