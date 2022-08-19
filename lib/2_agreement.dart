import 'package:flutter/material.dart';

/// 同意协议
class MyApp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text("隐私协议"),
          ),
        ),
        body: MyBody(),
      ),
    );
  }
}

class MyBody extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CheckBoxState();
  }
}

class CheckBoxState extends State<MyBody> {
  var flag = true;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        // 主轴对齐方式
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Checkbox(
              value: flag,
              onChanged: (bool? change) {
                setState(() {
                  flag = change!;
                });
                print(change);
              }),
          const Text(
            "同意协议",
            style: TextStyle(fontSize: 20),
          )
        ],
      ),
    );
  }
}
