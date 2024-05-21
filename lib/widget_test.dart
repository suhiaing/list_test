import 'package:flutter/material.dart';
import 'package:habbit_tracker_next_page/data.dart';

class WidgetTest extends StatelessWidget {
  const WidgetTest({super.key, required this.plan});
  final Map plan;
  @override
  Widget build(BuildContext context) {
    final scrollController = ScrollController();
    return Container(
      color: Colors.lightGreen.shade300,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 1.0),
        child: Scrollbar(
          controller: scrollController,
          child: ListView.builder(
              controller: scrollController,
              itemCount: constants.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, itemCount) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 150,
                      width: 300,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(150),
                          topRight: Radius.circular(150),
                        ),
                        color: Colors.white,
                      ),
                      child: Center(
                          child: Text(
                        "Day",
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                    ),
                    Container(
                      width: 380,
                      height: 550,
                      decoration: BoxDecoration(
                        border: Border(
                          left: BorderSide(
                              width: 1.0, color: Colors.grey.shade500),
                          right: BorderSide(
                              width: 1.0, color: Colors.grey.shade500),
                        ),
                        color: Colors.white,
                      ),
                    )
                  ],
                );
              }),
        ),
      ),
    );
  }
}
