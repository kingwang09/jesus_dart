void main(){
  var string = 'Hello world!';
  var intVal = 10;
  var doubleVal = 3.15;


  print("string: $string");
  print("int: $intVal");
  print("double: $doubleVal");

  var one = int.parse("1");
  var doubleParseVal = double.parse("1.1234");
  print("parse int: $one");
  print("parse double: $doubleParseVal");


  String stringVal1 = 'Hello';
  String stringVal2 = 'Hello';
  print(stringVal1 == stringVal2);//true
}