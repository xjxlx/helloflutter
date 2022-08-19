import 'package:flutter/material.dart';

// app
class CountApp extends StatelessWidget {
  const CountApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeWidget(),
    );
  }
}

// home
class HomeWidget extends StatelessWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("计数器"),
      ),
      body: BodyWidget(),
    );
  }
}

// body
class BodyWidget extends StatefulWidget {
  const BodyWidget({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _CountState();
  }
}

class _CountState extends State<BodyWidget> {
  var count = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  child: Text("+"),
                  onPressed: () {
                    print("点击了加号！");
                    setState(() {
                      ++count;
                    });
                  }),
              SizedBox(width: 10),
              ElevatedButton(
                  child: Text("-"),
                  onPressed: () {
                    print("点击了减号！");
                    setState(() {
                      --count;
                    });
                  })
            ],
          ),
          SizedBox(height: 10),
          Text("当前的计数器值是：$count")
        ],
      ),
    );
  }
}
