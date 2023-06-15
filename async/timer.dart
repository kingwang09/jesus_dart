import 'dart:async';

void main(){
  Timer.periodic(
    Duration(seconds: 3), //3초 단위
        (timer) {
          //execution logic
          print("정기적으로 3초단위로 실행한다.");
    },
  );
}