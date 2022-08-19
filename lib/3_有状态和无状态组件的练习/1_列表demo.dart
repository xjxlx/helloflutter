import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// 构建app
class ListApp extends StatelessWidget {
  const ListApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

// home
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("列表Demo"),
      ),
      body: Body(),
    );
  }
}

//  body
class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 返回一个可以滑动的列表
    return ListView(
      children: [
        //  返回一列数据
        Item("Apple1", "Macbook Product1",
            "https://tva1.sinaimg.cn/large/006y8mN6gy1g72j6nk1d4j30u00k0n0j.jpg"),
        const SizedBox(
          height: 8,
        ),
        Item("Apple2", "Macbook Product2",
            "https://tva1.sinaimg.cn/large/006y8mN6gy1g72imm9u5zj30u00k0adf.jpg"),
        const SizedBox(
          height: 8,
        ),
        Item("Apple3", "Macbook Product3",
            "https://tva1.sinaimg.cn/large/006y8mN6gy1g72imqlouhj30u00k00v0.jpg"),
      ],
    );
  }
}

//  item
class Item extends StatelessWidget {
  String title;
  String des;
  String url;

  Item(this.title, this.des, this.url, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // 距离四边的间距
      padding: const EdgeInsets.all(12),
      // 样式的描述
      decoration: BoxDecoration(
          // 边框
          border: Border.all(width: 5, color: Colors.blueGrey)),
      child: Column(
        //  主轴对齐方式
        mainAxisAlignment: MainAxisAlignment.center,
        // 侧轴对齐方式
        crossAxisAlignment: CrossAxisAlignment.start,
        // 子view
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                title,
                style: TextStyle(color: Colors.orange),
              )
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            des,
            style: TextStyle(color: Colors.blue),
          ),
          const SizedBox(
            height: 8,
          ),
          Image.network(url)
        ],
      ),
    );
  }
}
