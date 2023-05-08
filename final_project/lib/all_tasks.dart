import 'package:final_project/add_task.dart';
import 'package:final_project/task_chooise_dialog.dart';
import 'package:final_project/task_filter.dart';
import 'package:flutter/material.dart';

class AllTaskScreen extends StatelessWidget {
  const AllTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text(
          'My Task',
        ),
        actions: [
          IconButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  isScrollControlled: false,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15),
                      topLeft: Radius.circular(15),
                    ),
                  ),
                  builder: (context) {
                    return TasksFilter();
                  },
                );
              },
              icon: const Icon(Icons.filter_list_rounded))
        ],
      ),
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.only(
          top: 25,
          bottom: 80,
        ),
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 5,
              horizontal: 15,
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              padding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 15,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      if (index % 3 == 0)
                        const CircleAvatar(
                          radius: 12,
                          backgroundColor: Colors.green,
                          child: Icon(
                            Icons.done,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                      if (index % 2 == 0)
                        const SizedBox(
                          width: 5,
                        ),
                      Expanded(
                        child: Text(
                          'Task Name',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      ),
                      InkWell(
                          onTap: () {
                            showModalBottomSheet(
                              context: context,
                              isScrollControlled: false,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(15),
                                  topLeft: Radius.circular(15),
                                ),
                              ),
                              builder: (context) {
                                return TaskChooise();
                              },
                            );
                          },
                          child: const Icon(Icons.more_vert))
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Lorem s simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry',
                    style: Theme.of(context).textTheme.bodyMedium,
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
                  )
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => AddTaskScreen()));
        },
      ),
    );
  }
}
