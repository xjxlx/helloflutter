void main(List<String> args) {
  final a = Animation("zs", 12);
  a.run(123);
}

class Persion {
  String name = "default";

  Persion(this.name);

  void run(int age) {
    print(age);
  }
}

// 继承
class Animation extends Persion {
  int age = 0;
  String named = "default";

  Animation(this.named, this.age) : super(named);

  // 重写方法
  @override
  void run(int age) {
    super.run(age);
  }
}
