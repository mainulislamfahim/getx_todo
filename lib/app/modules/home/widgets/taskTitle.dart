import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({
    Key? key,
    required this.size,
    required this.text,
    this.time,
    this.des,
    this.press,
  }) : super(key: key);

  final Size size;
  final TextTheme text;
  final String? time, des;
  final Function? press;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            Container(
              height: double.infinity,
              alignment: Alignment.center,
              width: size.width * 0.1,
              color: Colors.red,
              child: Text(
                "$time",
                style: text.headline6!.copyWith(color: Colors.white),
              ),
            ),
            Expanded(
              child: Text(
                "$des",
                style: text.headline6,
              ),
            ),
            GestureDetector(
              onTap: press as void Function()? ?? () {},
              child: Container(
                alignment: Alignment.center,
                width: size.width * 0.1,
                height: double.infinity,
                color: Colors.red,
                child: const Icon(
                  Icons.delete,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
