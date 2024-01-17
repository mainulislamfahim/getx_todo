import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({
    super.key,
    required this.size,
    required this.text,
    this.time,
    this.des,
  });

  final Size size;
  final TextTheme text;
  final String? time, des;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      child: Container(
        width: double.maxFinite,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(children: [
          Container(
            height: double.maxFinite,
            alignment: Alignment.center,
            width: size.width * 0.1,
            color: Colors.red,
            child: Text(
              "26",
              style: text.headline6!.copyWith(color: Colors.white),
            ),
          ),
          Expanded(
            child: Container(
              child: Text(
                "Task Description",
                style: text.headline6,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              alignment: Alignment.center,
              width: size.width * 0.1,
              height: double.maxFinite,
              color: Colors.red,
              child: const Icon(
                Icons.delete,
                color: Colors.white,
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
