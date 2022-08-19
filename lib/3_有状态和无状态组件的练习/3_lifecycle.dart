import 'package:flutter/material.dart';

class LifecycleApp extends StatelessWidget {
  LifecycleApp({Key? key}) : super(key: key) {
    print("LifecycleApp的构造函数！");
  }

  @override
  Widget build(BuildContext context) {
    print("LifecycleApp的Build函数！");
    return MaterialApp(
      home: LifecycleApp2(),
    );
  }
}

class LifecycleApp2 extends StatefulWidget {
  LifecycleApp() {
    print("1：LifecycleApp的构造 函数！");
  }

  @override
  State<LifecycleApp2> createState() {
    print("2：LifecycleApp的 createState 函数！");
    return _LifecycleAppState();
  }
}

class _LifecycleAppState extends State<LifecycleApp2> {
  _LifecycleAppState() {
    print("3:LifecycleApp的 State 的 构造  函数！");
  }

  var size = 100;

  @override
  void initState() {
    super.initState();
    print("4:LifecycleApp的 State 的 initState 函数！");
  }

  @override
  void dispose() {
    super.dispose();
    print("6:LifecycleApp的 State 的 dispose 函数！");
  }

  @override
  Widget build(BuildContext context) {
    print("5:LifecycleApp的 State 的 build 函数！");
    return RaisedButton(onPressed: () {
      setState(() {
        size++;
      });
    });
  }
}
