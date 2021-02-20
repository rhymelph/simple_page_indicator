import 'package:flutter/material.dart';
import 'package:simple_page_indicator/simple_page_indicator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Page Indicator Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Simple Page Indicator Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Color> pageList = [
    Colors.blue,
    Colors.red,
    // Colors.green,
    // Colors.black,
    // Colors.purple,
  ];

  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 400,
              width: 400,
              child: PageView.builder(
                controller: pageController,
                itemBuilder: _buildItems,
                itemCount: pageList.length,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            SimplePageIndicator(
              itemCount: pageList.length,
              controller: pageController,
              maxSize: 6,
              minSize: 3,
              indicatorColor: Colors.red,
              space: 14,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildItems(BuildContext context, int index) {
    return Container(
      color: pageList[index],
      child: Placeholder(),
    );
  }
}
