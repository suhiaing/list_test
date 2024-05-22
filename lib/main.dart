import 'package:flutter/material.dart';
import 'package:habbit_tracker_next_page/data.dart';
import 'package:habbit_tracker_next_page/widget_test.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: WidgetTest(
        plan: constants[0],
      ),
      // body: ListView.builder(
      //     itemCount: constants.length,
      //     itemBuilder: ((context, index) {
      //       return GestureDetector(
      //         onTap: () {
      //           Navigator.push(
      //               context,
      //               MaterialPageRoute(
      //                   builder: ((context) => WidgetTest(
      //                         plan: constants[index],
      //                       ))));
      //         },
      //         child: Text(constants[index]["title"]),
      //       );
      //     })),
    ));
  }
}
