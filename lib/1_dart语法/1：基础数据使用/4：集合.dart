import 'package:flutter/cupertino.dart';

void main(List<String> args) {
  var letters = ['a', 'b', 'c', 'd'];
  print('$letters ${letters.runtimeType}');

// 2.明确指定类型
  List<int> numbers = [1, 2, 3, 4];
  print('$numbers ${numbers.runtimeType}');

  // Set的定义
// 1.使用类型推导定义
  var lettersSet = {'a', 'b', 'c', 'd'};
  print('$lettersSet ${lettersSet.runtimeType}');

// 2.明确指定类型
  Set<int> numbersSet = {1, 2, 3, 4};
  print('$numbersSet ${numbersSet.runtimeType}');

// Map的定义

// 1.使用类型推导定义
  var infoMap1 = {'name': 'why', 'age': 18};
  print('$infoMap1 ${infoMap1.runtimeType}');

// 2.明确指定类型
  Map<String, Object> infoMap2 = {'height': 1.88, 'address': '北京市'};
  print('$infoMap2 ${infoMap2.runtimeType}');
}
