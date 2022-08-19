void main(List<String> args) {
  var color = Colors.blue;

  switch (color) {
    case Colors.green:
      print("绿色！");
      break;
    case Colors.red:
      print("红色！");
      break;
    case Colors.blue:
      print("蓝色！");
      break;
    case Colors.origing:
      print("黄色！");
      break;
  }

  print(Colors.values); // [Colors.red, Colors.green, Colors.blue, Colors.origing]
  print(Colors.blue.index); // 2
  print(Colors.blue.name); // blue
}

enum Colors { red, green, blue, origing }
