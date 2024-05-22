import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:habbit_tracker_next_page/data.dart';
import 'package:habbit_tracker_next_page/widget_variable.dart';

class WidgetTest extends StatelessWidget {
  const WidgetTest({super.key, required this.plan});
  final Map plan;
  @override
  Widget build(BuildContext context) {
    final scrollController = ScrollController();
    return MaterialApp(
      home: Scaffold(
        body: LayoutBuilder(builder: (context, constraints) {
          return Container(
            color: const Color.fromARGB(255, 234, 232, 232),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2.0),
              child: Scrollbar(
                thumbVisibility: true,
                trackVisibility: true,
                thickness: 10,
                controller: scrollController,
                child: ListView.builder(
                    controller: scrollController,
                    itemCount: plan["habbits"][0]["data"].length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, itemCount) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            height: 150,
                            width: 300,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: Variable.myboxShadow,
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(150),
                                topRight: Radius.circular(150),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "Day\n  ${(itemCount + 1).toString()}",
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 380,
                            height: 550,
                            decoration: BoxDecoration(
                              border: Border(
                                left: BorderSide(
                                    width: 1.0, color: Colors.grey.shade500),
                                right: BorderSide(
                                    width: 1.0, color: Colors.grey.shade50),
                              ),
                              color: Colors.white,
                            ),
                            child: Column(
                              children: [
                                Container(
                                  width: 100,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      color: Colors.lightGreen.shade400,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Center(
                                    child: Text(
                                      plan["habbits"][0]["data"][itemCount]
                                          ["date"],
                                      style: const TextStyle(
                                          fontSize: 17, color: Colors.white),
                                    ),
                                  ),
                                ),
                                Expanded(
                                    child: ListView.separated(
                                  itemCount: plan["habbits"].length,
                                  separatorBuilder:
                                      (BuildContext context, int index) =>
                                          const SizedBox(
                                    height: 10,
                                  ),
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(plan["habbits"][index]
                                              ["habbitName"]),
                                        ],
                                      ),
                                    );
                                  },
                                )),
                              ],
                            ),
                          )
                        ],
                      );
                    }),
              ),
            ),
          );
        }),
      ),
    );
  }
}
