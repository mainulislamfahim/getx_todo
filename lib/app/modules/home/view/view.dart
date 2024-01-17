import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:getx_todo_app/app/modules/Task/views/TaskScreen.dart';
import 'package:getx_todo_app/app/modules/home/controller/controller.dart';
import 'package:getx_todo_app/app/modules/home/widgets/taskTitle.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final TaskController taskController = Get.put(TaskController());

  @override
  Widget build(BuildContext context) {
    TextTheme text = Theme.of(context).textTheme;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: InkWell(
        onTap: () {
          Get.to(() => const TodoScreen());
        },
        child: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.red,
          ),
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
      appBar: AppBar(title: const Text("ToDo App")),
      body: SafeArea(
        child: Padding(
          // child: Text(
          //   "No Task Found",
          //   // ignore: deprecated_member_use
          //   style: text.headline5,
          // ) ,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: ListView.builder(
            itemCount: taskController.taskList.length,
            itemBuilder: (context, index) => TaskTile(size: size, text: text),
          ),
        ),
      ),
    );
  }
}
