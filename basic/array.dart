void firstArray() {
  var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];

  //조건문으로 필터링 후 forEach
  flybyObjects.where((name) => name.contains('turn')).forEach(print);
  //where를 한다해서 원본이 바뀌지는 않는 듯. 새로운 배열을 반환하는 것으로 보임.

  flybyObjects.forEach((element) {
    print("long print: $element");
  });

  //위 내용을 아래처럼 간략히 표현 가능
  flybyObjects.forEach(print);

  var jupiter = flybyObjects.where((name) => name == 'Jupiter'); //신규 배열로 반환되게됨.
  print("jupiter: $jupiter");
}

void secondArray() {
  print("안녕");
}

void main() {
  //배열과의 첫만남
  //firstArray();
}

void calculateTotal(List<int> items) {}
