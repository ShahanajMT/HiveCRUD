import 'package:flutter/material.dart';
import 'package:hive_sample/database/functions/db_functions.dart';

class ListStudentWidget extends StatelessWidget {
  const ListStudentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: studentListNotifier,
      builder: (ctx, studentList, _) {
       
        return ListView.separated(
          itemCount: studentList.length,
          itemBuilder: (context, index) {
             final data = studentList[index];
            return ListTile(
              title: Text(data.name),
              subtitle: Text(data.age),
            );
          },
          separatorBuilder: (ctx, incex) {
            return const Divider();
          },
        );
      },
    );
  }
}
