import 'package:isar/isar.dart';


part 'habit.g.dart';

@Collection()
class habit{
  Id id = Isar.autoIncrement;
  late String name;
  List<DateTime> done=[
    //ymd


  ];
}