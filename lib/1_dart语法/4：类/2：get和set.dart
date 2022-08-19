
void main(List<String> args) {
  final p = Person();
   p.setName = "John";
  print(p.getName);
}

class Person {
  String _name = '';

  // set的写法
  set setName(String _name) {
    this._name = _name;
  }

  // get的写法
 String get getName {
    return _name;
  }
}
