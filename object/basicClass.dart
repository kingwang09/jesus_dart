class Person{
  String? name;
  int? age;

  Person(String name, int age){
    this.name = name;
    this.age = age;
  }

  @override
  String toString() {
    return "name=$name, age=$age";
  }
}


void main(){
  Person hello = new Person("Hello", 18);
  print(hello);
}