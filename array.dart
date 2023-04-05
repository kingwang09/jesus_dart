void main(){
  var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];

  //조건문으로 필터링 후 forEach
  flybyObjects.where((name) => name.contains('turn')).forEach(print);
  //where를 한다해서 원본이 바뀌지는 않는 듯.


  flybyObjects.forEach((element) {
    print("long print: $element");
  });

  //위 내용을 아래처럼 간략히 표현 가능
  flybyObjects.forEach(print);
}