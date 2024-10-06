import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  List fruite = ["りんご", "みかん", "ブドウ"];

  @override
  Widget build(BuildContext context) {
    // print(fruite[1]); // consoleに出力
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: fruite.length,
        itemBuilder: (context, index){
          return Text(fruite[index]);
      }),
      // body: Center(
      //   child: Column(
      //     mainAxisSize: MainAxisSize.min,
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: <Widget>[
      //       const Text(
      //         'You have pushed the button this many times:',
      //       ),
      //       Text(
      //         '$_counter',
      //         style: Theme.of(context).textTheme.headlineMedium,
      //       ),
      //       const Row(
      //         children: <Widget>[
      //           Padding(
      //             padding: EdgeInsets.all(8.0),
      //             child: SizedBox(
      //               height: 50,
      //               width: 50,
      //               child: ColoredBox(color: Colors.blue),
      //             ),
      //           ),
      //           SizedBox(
      //             height: 50,
      //             width: 50,
      //             child: ColoredBox(color: Colors.blue),
      //           ),
      //         ],
      //       ),
      //       const Row(
      //         // mainAxisSize: MainAxisSize.min,
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         children: <Widget>[
      //           Padding(
      //             padding: EdgeInsets.all(8.0),
      //             child: SizedBox(
      //               height: 50,
      //               width: 50,
      //               child: ColoredBox(color: Colors.pink),
      //             ),
      //           ),
      //           Padding(
      //             padding: EdgeInsets.all(8.0),
      //             child: SizedBox(
      //               height: 50,
      //               width: 50,
      //               child: ColoredBox(color: Colors.pink),
      //             ),
      //           ),
      //           Padding(
      //             padding: EdgeInsets.all(8.0),
      //             child: SizedBox(
      //               height: 50,
      //               width: 50,
      //               child: ColoredBox(color: Colors.pink),
      //             ),
      //           ),
      //         ],
      //       ),
      //       const Row(
      //         mainAxisAlignment: MainAxisAlignment.end,
      //         children: <Widget>[
      //           Padding(
      //             padding: EdgeInsets.all(8.0),
      //             child: SizedBox(
      //               height: 80,
      //               width: 80,
      //               child: ColoredBox(color: Colors.green),
      //             ),
      //           ),
      //           SizedBox(
      //             height: 80,
      //             width: 80,
      //             child: ColoredBox(color: Colors.green),
      //           ),
      //         ],
      //       ),
      //     ],
      //   ),
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
