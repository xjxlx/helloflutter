
void main(List<String> args) {
  var person = Person("why");
  var person2 = Person("why2", age1: 10);
  print(person2.age);
}

class Person {
  final String name;
  final int age;

  // Person(this.name, {this.age = 10});

  // 初始化列表
  Person(this.name, {int age1 = 0}) : age = age1 > 20 ? 30 : 40;
}
