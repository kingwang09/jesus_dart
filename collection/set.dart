void main(){
  Set<int> dataSet = Set.of({1, 2, 3, 4, 5, 5, 6, 7});
  dataSet.add(1);

  dataSet.forEach((element) => print(element));
}