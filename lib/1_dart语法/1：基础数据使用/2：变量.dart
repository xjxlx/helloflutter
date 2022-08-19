void main() {
  // 1：明确声明
  String name = "张三";

  // 2:推导声明
  // 2.1 var 声明变量
  var name1 = "张三";

  // 2.2 final 声明常量，不能被重新修改
  final name3 = "张三";
  final name4 = DateTime.now();

  // 2.3 const 声明常量，不能别修改
  const name5 ="张三";
  // const name6= DateTime.now();

  // final 和 const的区别
  // const 在编译器就必须是常量，否则就报错
  // final 在运行期才去确定一个值，可以通过赋值进行计算

}
