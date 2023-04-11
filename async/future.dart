void main() async {//main을 비동기 함수로 설정
  countSeconds(4);//비동기 함수가 아니지만, future를 사용했음
  await printOrderMessage();//비동기함수로 지정했고 await로 결과를 대기함.
}

// You can ignore this function - it's here to visualize delay time in this example.
void countSeconds(int s) {//비동기 함수는 아닌데 future를 사용..
  for (var i = 1; i <= s; i++) {
    Future.delayed(Duration(seconds: i), () => print(i));
  }
}

Future<void> printOrderMessage() async {//비동기 함수
  print('Awaiting user order...');
  var order = await fetchUserOrder();//awit로 대기
  print('Your order is: $order');
}

Future<String> fetchUserOrder() {//비동기함수는 아님.
  // Imagine that this function is more complex and slow.
  return Future.delayed(const Duration(seconds: 4), () => 'Large Latte');
}