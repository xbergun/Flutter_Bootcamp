import 'package:dio/dio.dart';
import 'package:flutter_project/week4/future/task/model/task_model.dart';

abstract class ITaskService {
  final Dio dio;

  ITaskService(this.dio);

  Future<List<TaskModel>> fetchAllTask();


}
