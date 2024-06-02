import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:hive_sample/database/functions/db_functions.dart';
import 'package:hive_sample/database/models/datamodel.dart';

class AddStudentWidget extends StatelessWidget {
  AddStudentWidget({super.key});

  final _nameController = TextEditingController();
  final _ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          TextFormField(
            controller: _nameController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Name',
            ),
          ),
          const SizedBox(height: 15),
          TextFormField(
            controller: _ageController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Age',
            ),
          ),
          const SizedBox(height: 15),
          GestureDetector(
            onTap: () {
              onAddButtonClicked();
            },
              child: Container(
            height: 50,
            width: double.infinity,
            color: Colors.indigo,
            child: const Center(
              child: Text('Add'),
            ),
          ))
        ],
      ),
    );
  }
  Future<void> onAddButtonClicked() async {
  final _name = _nameController.text.trim();
  final _age = _ageController.text.trim();
  if (_name.isEmpty || _age.isEmpty) {
    return;
  }
  log('$_name $_age');
  final _student =  StudentModel(1, name: _name, age: _age);
  addStudent(_student);
}
}


