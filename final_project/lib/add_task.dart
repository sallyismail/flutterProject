import 'package:final_project/widgets/button.dart';
import 'package:final_project/widgets/text_field.dart';
import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  AddTaskScreen({super.key});

  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController timeController = TextEditingController();
  TextEditingController dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Add Task',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              SharedTextField(
                controller: titleController,
                validate: (value) {},
                hint: 'Task Name',
              ),
              const SizedBox(
                height: 20,
              ),
              SharedTextField(
                  controller: descriptionController,
                  validate: (value) {},
                  hint: 'Task Description',
                  maxLines: 5),
              const SizedBox(
                height: 20,
              ),
              SharedTextField(
                controller: timeController,
                validate: (value) {},
                hint: 'Task Time',
                readOnly: true,
                onTap: () {
                  showTimePicker(
                      context: context,
                      initialTime: TimeOfDay(
                          hour: DateTime.now().hour,
                          minute: DateTime.now().minute));
                },
              ),
              const SizedBox(
                height: 20,
              ),
              SharedTextField(
                controller: dateController,
                validate: (value) {},
                hint: 'Task Date',
                readOnly: true,
                onTap: () {
                  showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2020),
                      lastDate: DateTime(DateTime.now().year + 2));
                },
              ),
              const SizedBox(
                height: 50,
              ),
              SharedButton(
              title: 'Add',
              onPressed: () {},
            ),
            ],
          ),
        ),
      ),
    );
  }
}
