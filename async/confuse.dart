
//await를 쓰려면 명시적으로 비동기 지정을 해야 쓸수 있음.
Future<void> main() async {
  print("start main...");
  countAt(5);
  await asyncCountAt(5);
  print("end main...");

}

void countAt(int last){//동작은 비동기로 돌아감.
  for(int i = 1; i <= last; i++){
    Future.delayed(Duration(seconds: i), ()=>print("wait $i"));
  }
}

//비동기로 선언하면 void도 모두 Future로 선언해줘야함..
Future<void> asyncCountAt(int last) async{//동작은 비동기로 돌아감.
  for(int i = 1; i <= last; i++){
    Future.delayed(Duration(seconds: i), ()=>print("async wait $i"));
  }
}