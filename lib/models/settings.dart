import 'package:isar/isar.dart';

part 'settings.g.dart';

@Collection()
class setting{
  Id id= Isar.autoIncrement;
  DateTime? firstlaunch;
}
