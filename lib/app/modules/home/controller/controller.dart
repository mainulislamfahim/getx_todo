import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:getx_todo_app/app/modules/home/models/models.dart';

class TaskController extends GetxController {
  final _taskList = <Task>[].obs;

  List<Task> get taskList => _taskList;

  void addTask() {}
  void deleteTask(Task task) {
    
  }
}
