Future<String> createOrderMessage() async {//async메소드로 지정
  var order = await fetchUserOrder();
  return 'Your order is: $order';
}

Future<String> fetchUserOrder() {
  // Imagine that this function is
  // more complex and slow.
  return Future.delayed(
    const Duration(seconds: 2),
        () => 'Large Latte',
  );
}
//main함수를 async로 지정
Future<void> main() async {
  print('Fetching user order...');
  print(await createOrderMessage());//await로 대기
}