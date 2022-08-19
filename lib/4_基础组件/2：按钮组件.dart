import 'package:flutter/material.dart';

/**
 * 基础组件 - 按钮
 */
class CommonWidgetApp extends StatelessWidget {
  const CommonWidgetApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var imageURL =
        "https://pic1.zhimg.com/v2-54731bf78d6823cbf8f486ea30401388_r.jpg";

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("基础组件"),
        ),
        body: Column(
          // 侧轴的轴向
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            // 凸起的按钮
            RaisedButton(
                child: Text("我是凸起的按钮"),
                color: Colors.blue,
                textColor: Colors.red,
                onPressed: () {
                  print("点击了凸起的按钮");
                }),

            // 水平的按钮就
            FlatButton(
              onPressed: () {},
              child: Text("我是水平的按钮！"),
              color: Colors.red,
            ),

            // 内陷的button
            OutlinedButton(
              onPressed: () {},
              child: const Text("内横线的button"),
              style: ButtonStyle(
                // shape: //外边框装饰 会覆盖 side 配置的样式
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),

                //设置边框
                side: MaterialStateProperty.all(
                    BorderSide(color: Colors.red, width: 1)),
                // 间距
                padding: MaterialStateProperty.all(
                    EdgeInsets.only(left: 10, top: 5, right: 50, bottom: 5)),
              ),
            ),

            // 底部浮动的button
            FloatingActionButton(
              child: const Icon(Icons.add),
              onPressed: () {},
            ),

            // 自定义的button
            FlatButton(
              onPressed: () {},
              child: Row(
                // 主轴的位置
                mainAxisAlignment: MainAxisAlignment.end,
                // 主轴上占用的大小
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(
                    Icons.favorite,
                    color: Colors.amber,
                  ),
                  Text("爱你呦1")
                ],
              ),
              color: Colors.red,
              // 背景色
              textColor: Colors.blue,
              // 内容色
              // 形状
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
            ),

            // 图片
            Expanded(
                child: Image(
              image: NetworkImage(imageURL),
              width: 150,
              height: 150,
              fit: BoxFit.contain,
              // 填充模式
              color: Colors.red,
              // 混入颜色
              colorBlendMode: BlendMode.darken,
              // 混合模式
              repeat: ImageRepeat.noRepeat,
              // 重叠模式
              alignment: Alignment.topCenter, // 摆放的位置
            )),

            // 网络图片的简写
            // Expanded(child:  Image.network(imageURL))

            // 加载本地图片
            // const Image(image: AssetImage("assets/images/jsy.jpg"))
            Image.asset("assets/images/jsy.jpg")
          ],
        ),
      ),
    );
  }
}
