import 'package:final_project/task_details.dart';
import 'package:final_project/task_filter.dart';
import 'package:flutter/material.dart';

class TaskChooise extends StatelessWidget {
  const TaskChooise({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20,
        left: 10,
        right: 10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 40,
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
                showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  backgroundColor: Colors.transparent,
                  builder: (context) {
                    return TasksDetails();
                  },
                );
              },
              child: Row(
                children: [
                  const Icon(
                    Icons.view_kanban_outlined,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Show',
                    style: Theme.of(context).textTheme.labelLarge!.copyWith(),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 40,
            child: Row(
              children: [
                const Icon(
                  Icons.delete_outline,
                  color: Colors.red,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  'Delete',
                  style: Theme.of(context).textTheme.labelLarge!.copyWith(
                        color: Colors.red,
                      ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
