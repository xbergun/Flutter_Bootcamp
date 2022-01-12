part of 'task_service.dart';

enum _TaskServiceEndPints { DOGS }

extension TaskServiceEndPintsExtension on _TaskServiceEndPints {
  String get rawValue {
    switch (this) {
      case _TaskServiceEndPints.DOGS:
        return '/dogs';
    }
  }
}
