void main(){
  //iterable
    //list, map, set

  Iterable<int> iterable = const [1, 2, 3, 4, 5, 6, 7];
  int fiveOver = iterable.firstWhere((element) => element > 5);
  print("result five over: $fiveOver");

  //fist, last element
  int first = iterable.first;
  int last = iterable.last;
  print("first: $first, last: $last");

  //int fiveOverOne = iterable.singleWhere((element) => element > 5); //to many elements exceptions
  //print("result five over one: $fiveOverOne");

  //isContains: every(), any()
  bool isFiveOverEvery = iterable.every((element) => element > 5);
  print("is five over(every): $isFiveOverEvery");

  bool isFiveOverAny = iterable.any((element) => element > 5);
  print("is five over(any): $isFiveOverAny");

  //filtering .where()
  Iterable<int> fiveOvers = iterable.where((element) => element > 5);
  print("five overs: $fiveOvers");

}