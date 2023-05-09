
void main(){
  List<int> dataList = List.of([1, 2, 3, 4], growable: true);
  dataList.add(5);
  dataList.add(6);
  dataList.add(7);
  dataList.forEach((element) => print(element));
}