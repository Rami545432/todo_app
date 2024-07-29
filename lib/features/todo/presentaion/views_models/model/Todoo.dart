import 'package:hive_flutter/hive_flutter.dart';
part 'Todoo.g.dart';

@HiveType(typeId: 1)
class TodoModel extends HiveObject {
  @HiveField(0)
  String title;
  @HiveField(1)
  bool value;
  TodoModel({required this.title,required this.value});
}
