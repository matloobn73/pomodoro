import 'package:pomodoro/model/task_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

final shared = SharedPrefs.instance;

final defaultTask = Task(title: "Default Session", rounds: 4,duration: 20, taskDurations: [
  TaskDurations(duration: get('focusTime',25), isCompleted: false, category: 0),
  TaskDurations(duration: get('restTime',5),   isCompleted: false, category: 1),
  TaskDurations(duration: get('focusTime',25), isCompleted: false, category: 0),
  TaskDurations(duration: get('restTime',5),  isCompleted: false, category: 1),
  TaskDurations(duration: get('focusTime',25), isCompleted: false, category: 0),
  TaskDurations(duration: get('restTime',5),   isCompleted: false, category: 1),
  TaskDurations(duration: get('focusTime',25), isCompleted: false, category: 0),
  TaskDurations(duration: get('longRestTime',15), isCompleted: false, category: 2),
]);


int get(String key, int defaultValue){
  if (shared.containsKey(key)) {
    return shared.getDouble(key)!.toInt();
  }
  return defaultValue;
}

class SharedPrefs {
  static late final SharedPreferences instance;

  static Future<SharedPreferences> init() async =>
      instance = await SharedPreferences.getInstance();
}