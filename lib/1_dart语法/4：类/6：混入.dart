void main(List<String> args) {
  final pl = new Player();
  pl.getAnimalCount();
  pl.getDes();
  pl.flay();
}

mixin Apple {
  getAnimalCount() {
    print("获取数量！");
  }
}

mixin Banner {
  getDes() {
    print("获取说明！");
  }
}

abstract class Dog {
  void flay();
}

// 1：在dart中，没有一个固定的关键字去修饰接口
// 2: 每一个类都是一个隐式的接口
// 3: 如果要实现这个类，那么就要实现类中的所有方法
class Player extends Dog with Apple, Banner {
  @override
  void flay() {
    print("flay!!!");
  }
}
