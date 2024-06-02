import 'package:flutter/material.dart';
import 'package:hive_sample/database/functions/db_functions.dart';
import 'package:hive_sample/screens/home/widgets/add_student_widget.dart';
import 'package:hive_sample/screens/home/widgets/list_student_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    getAllStudents();
    return  Scaffold(
      body: SafeArea(child: Column(
        children: [
          AddStudentWidget(),
          const Expanded(child: ListStudentWidget())
        ],
      )),
    );
  }
}