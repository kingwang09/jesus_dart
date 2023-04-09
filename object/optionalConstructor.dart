import 'dart:math';

class Rectangle{
  Point origin;
  int width;
  int height;

  //named constructor, 초기값을 지정
  Rectangle({this.origin = const Point(0, 0), this.width = 0, this.height = 0});

  @override
  String toString() => "Rectangle(origin=$origin, width=$width, height=$height)";
}

void main(){
  Rectangle r1 = Rectangle(origin:Point(10, 20), width: 30, height: 40);
  print("result: $r1");

  Rectangle r2 = Rectangle(width: 30, height: 40);
  print("result: $r2");

  Rectangle r3 = Rectangle(height: 40);
  print("result: $r3");

  Rectangle r4 = Rectangle();
  print("result: $r4");
}