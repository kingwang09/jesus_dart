String createOrderMessage() {
  fetchUserOrder();
  return "Your order is: ....i don't know...'";
}

Future<void> fetchUserOrder() =>
    // Imagine that this function is more complex and slow.
    Future.delayed(const Duration(seconds: 2), () => print('Large Latte'));

void main() {
  print(createOrderMessage());
}