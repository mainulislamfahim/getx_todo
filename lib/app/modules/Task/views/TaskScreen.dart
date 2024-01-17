import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:getx_todo_app/app/modules/home/controller/controller.dart';

class TodoScreen extends StatelessWidget {
  TodoScreen({super.key});

  TaskController controller = Get.put(TaskController());

  @override
  Widget build(BuildContext context) {
    TextTheme text = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(title: const Text("Add New Task")),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(
              flex: 2,
            ),
            Text(
              "Add New Task",
              style: text.headline5,
            ),
            const SizedBox(
              height: 30,
            ),
            TextField(
              controller: controller.textEditingController,
              decoration: InputDecoration(
                hintText: "Enter your Task",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            InkWell(
              onTap: () {
                controller.addTask();
                Get.back();
              },
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15), color: Colors.red),
                child: Text(
                  "Add",
                  style: text.headline5,
                ),
              ),
            ),
            const Spacer(
              flex: 3,
            ),
          ],
        ),
      )),
    );
  }
}
