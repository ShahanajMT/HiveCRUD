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
              leading: CircleAvatar(backgroundColor: Colors.indigo,),
              title: Text(data.name),
              subtitle: Text(data.age),
              trailing: IconButton(onPressed: (){
                if (data.id != null) {
                  deleteStudent(data.id!);
                } else {
                  print('Unabled to delete');
                }
                
              }, icon: const Icon(Icons.delete, color: Colors.red, size: 20,)),
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
