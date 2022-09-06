import 'package:flutter/material.dart';

class Elements extends StatelessWidget {
  const Elements({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 78,
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.grey[200]),
                child: const Center(
                  child: Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry."),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
