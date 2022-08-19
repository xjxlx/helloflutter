// 函数是一等公民，意思就是说，函数可以作为参数给别人使用，也可以作为返回值给别人使用
void main() {
  // 1.1 另外写一个函数给当前函数调用，这种方式是直接调用了foo的方法
  test1(foo("aaa"));

  // 1.2 把函数作为变量去使用，
  var foos = foo("abc");
  print(foos);

  // 1.2 使用匿名函数
  test1(() {
    print("我是调用的匿名函数！");
  });
}

// 1：定义一个函数作为参数使用
void test1(Function test) {
  // 执行匿名函数
  test();
}

// 1.1定义一个函数给别人使用
foo(String name) {
  print('传入的name:$name');
}
