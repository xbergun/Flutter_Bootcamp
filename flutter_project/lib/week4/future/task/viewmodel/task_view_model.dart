import 'package:flutter_project/week4/future/task/service/ITaskService.dart';
import 'package:mobx/mobx.dart';
part 'task_view_model.g.dart';

class TaskViewModel = _TaskViewModelBase with _$TaskViewModel;

abstract class _TaskViewModelBase with Store {
  
  late ITaskService taskService;

  @computed
  bool get isOdd => count.isOdd;
  

  @observable
  int count = 0;

  



  @action
  void onIncrementCount() {
    count += 1;
  }
}
