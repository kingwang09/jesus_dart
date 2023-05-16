
void main(){
  DateTime start = DateTime(2023, 05, 16, 16, 15, 30, 0, 0);
  DateTime end = DateTime.now();

  Duration duration = end.difference(start);
  print("start=$start, end=$end");
  print("diff duration: ${duration.inMinutes}:${duration.inSeconds%60}");
}