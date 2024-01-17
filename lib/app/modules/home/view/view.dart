import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
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
          Get.to(() => TodoScreen());
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
          child: Obx(
        () => (taskController.taskList.isEmpty)
            ? Center(
                child: Text(
                  "No Task Found",
                  // ignore: deprecated_member_use
                  style: text.headline5, textAlign: TextAlign.center,
                ),
              )
            : Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: ListView.builder(
                  itemCount: taskController.taskList.length,
                  itemBuilder: (context, index) => TaskTile(
                    size: size,
                    text: text,
                    time: taskController.taskList[index].createTask,
                    des: taskController.taskList[index].task,
                    press: () {
                      taskController.deleteTask(taskController.taskList[index]);
                    },
                  ),
                ),
              ),
      )),
    );
  }
}
