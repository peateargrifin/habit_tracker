import 'package:flutter/material.dart';
import 'package:habit_tracker/models/settings.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import '../models/habit.dart';

class habitdb extends ChangeNotifier {
  static late Isar isar;

  static Future<void> init() async {
    final dir = await getApplicationDocumentsDirectory();
    isar = await Isar.open([HabitSchema, SettingSchema], directory: dir.path);
  }

  Future<void> savefirstlaunchdate() async {
    final existset = await isar.settings.where().findFirst();
    if (existset == null) {
      final settings = setting()..firstlaunch = DateTime.now();
      await isar.writeTxn(() => isar.settings.put(settings));
    }
  }

  Future<DateTime?> getfirst() async {
    return await isar.settings.where().findFirst().then(
      (value) => value?.firstlaunch,
    );
  }

  List<habit> currhabit = [ ];

  Future<void> addhabit(String name) async {
    final nuhabit = habit()..name = name;
    await isar.writeTxn(() => isar.habits.put(nuhabit));

    readhabit();
  }

  Future<void> readhabit() async {
    List<habit> fetchabit = await isar.habits.where().findAll();
    currhabit.clear();
    currhabit.addAll(fetchabit);
    notifyListeners();
  }

  Future<void> update(int id, bool iscomp) async {
    final habit = await isar.habits.get(id);
    if (habit != null) {
      await isar.writeTxn(() async {
        if (iscomp && !habit.done.contains(DateTime.now)) {
          final today = DateTime.now();
          habit.done.add(DateTime(today.year, today.month, today.day));
          //await isar.habits.put(habit);
        } else {
          habit.done.removeWhere(
            (date) =>
                date.day == DateTime.now().day &&
                date.month == DateTime.now().month &&
                date.year == DateTime.now().year,
          );
        }
        await isar.habits.put(habit);
      });
    }





  }
}
