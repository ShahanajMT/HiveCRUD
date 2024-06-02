import 'package:flutter/material.dart';
import 'package:hive_sample/database/models/datamodel.dart';

ValueNotifier<List<StudentModel>> studentListNotifier = ValueNotifier([]);

void addStudent(StudentModel value) {
  studentListNotifier.value.add(value);
  //studentListNotifier.notifyListners();
  print(value.toString());
}