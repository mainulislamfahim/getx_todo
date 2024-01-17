import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_todo_app/app/modules/home/models/models.dart';

class TaskController extends GetxController {
  final _taskList = <Task>[].obs;
  TextEditingController? textEditingController;

  List<Task> get taskList => _taskList;
  @override
  void onInit() {
    super.onInit();
    textEditingController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    textEditingController?.clear();
  }

  void addTask() {
    String txt = textEditingController!.text;
    DateTime time = DateTime.now();
    taskList.add(Task(txt, time.day.toString()));
    textEditingController!.text = "";
  }

  void deleteTask(Task task) {
    taskList.remove(task);
  }
}
