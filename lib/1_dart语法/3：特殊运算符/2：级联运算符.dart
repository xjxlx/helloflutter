void main(List<String> args) {
  
  // 级联运算符，链式调用
  var person = new Person()
    ..name = "John"
    ..run()
    ..eatch();
}

class Person {
  String name = "zs";

  run() {
    print("run");
  }

  eatch() {
    print("eatch");
  }
}
