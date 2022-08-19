void main(List<String> args) {
  // 普通函数调用
  sayHello1(1, 2);
  //位置可选参数
  sayHello2(1, "2", 3.1);

  // 命名可选参数
  sayHello3(1, b:"3", c:4.1);
}

// 普通函数
int sayHello1(int a, int b) {
  return a + b;
}

//
// 位置可选参数: [param1, param2, ...]
void sayHello2(int a, [String b = "", double c = 1]) {

}

// 命名可选参数: {param1, param2, ...}
void sayHello3(int a, {String b = "", double c = 1}) {

}
