import 'package:final_project/task_chooise_dialog.dart';
import 'package:final_project/widgets/button.dart';
import 'package:flutter/material.dart';

class TasksDetails extends StatefulWidget {
  TasksDetails({super.key});

  @override
  State<TasksDetails> createState() => _TasksDetailsState();
}

class _TasksDetailsState extends State<TasksDetails> {
  bool selected = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 50,
      ),
      child: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            )),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 20,
            left: 10,
            right: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Task Name',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Icon(
                          Icons.date_range,
                          color: Colors.blue[200],
                          size: 18,
                        ),
                        Text(
                          '05:00',
                          style: Theme.of(context).textTheme.bodySmall,
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Icon(
                          Icons.timer_outlined,
                          color: Colors.blue[200],
                          size: 18,
                        ),
                        Text(
                          '10/10/2023',
                          style: Theme.of(context).textTheme.bodySmall,
                        )
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Expanded(
                child: Text(
                  'Lorem s simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
              SharedButton(onPressed: () {}, title: 'Done',color: Colors.green,),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
