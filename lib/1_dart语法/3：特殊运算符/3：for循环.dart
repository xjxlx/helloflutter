void main(List<String> args) {
  // 1：普通循环
  for (int i = 0; i < 10; i++) {
    print(i);
  }

  print("--------------------------------");

  // 2:数组循环
  var items = ["1", "2", "3", "4", "5", "6", "7", "8", "9"];
  for (var item in items) {
    print(item);
  }
  print("--------------------------------");

  for (var i = 0; i < items.length; i++) {
    print(i);
  }
}
