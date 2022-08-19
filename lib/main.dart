import 'package:flutter/material.dart';

import '3_有状态和无状态组件的练习/1_列表demo.dart';
import '3_有状态和无状态组件的练习/2_counter.dart';
 import '4_基础组件/2：按钮组件.dart';

main() {
  return runApp(CommonWidgetApp());
}

/// 返回一个app对象
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // 使用home对象作为内容
        home: Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("我的第一个flutter程序")),
      ),
      body: MyBody(),
    ));
  }
}

class MyBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "HelloWorc!",
        style: TextStyle(fontSize: 40, color: Colors.red),
      ),
    );
  }
}
