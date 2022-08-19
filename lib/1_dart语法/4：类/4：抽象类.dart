void main(List<String> args) {
  final a = Dog();
  a.getAnimalCount();
  
  print(a.runtimeType);
}

// 抽象类
abstract class Animal {
  // 抽象方法
  int getAnimalCount();

  // 普通方法
  void getAnimalDes() {
    print("我是具体类的方法：");
  }
}

class Dog extends Animal {
  int count = 10;

  @override
  int getAnimalCount() {
    return count;
  }
}
