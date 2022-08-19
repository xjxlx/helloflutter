void main(List<String> args) {
  // 1：调用无参方法
  test(() {
    print("我是匿名函数被调用！");
  });

  // 2：调用有参的方法
  test1((a, b) {
    return a + b;
  });

  // 3：调用有参的方法
  test2((a, b) {
    return a + b;
  });

  // 4：调用返回值为函数的方法
  var demo = getDemo();
  print(demo(20, 30));
}

// 1:调用无惨的方法参数
void test(Function function) {
  function();
}

// 2:调用有参的方法参数
void test1(int foo(int a, int b)) {
  var num = foo(1, 2);
  print(num);
}

// 3:调用有参的方法参数的简写
typedef ParamsFunction = int Function(int a, int b);

void test2(ParamsFunction function) {
  var num = function(3, 4);
  print(num);
}

// 4:把函数作为返回值使用
ParamsFunction getDemo() {
  // 返回一个ParamsFunction 类型的方法，类似java的new 一个对象
  return (a, b) {
    // 返回ParamsFunction 方法定义中的返回int类型的一个数据结果
    return a * b;
  };
}
