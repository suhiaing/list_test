import 'package:flutter/material.dart';

class WidgetTest extends StatelessWidget {
  const WidgetTest({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
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
              ),
              Container(
                width: 380,
                height: 550,
                decoration: BoxDecoration(
                  border: Border(
                    left: BorderSide(width: 1.0, color: Colors.grey.shade500),
                    right: BorderSide(width: 1.0, color: Colors.grey.shade500),
                  ),
                  color: Colors.white,
                ),
              )
            ],
          );
        });
  }
}
