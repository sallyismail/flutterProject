import 'package:flutter/material.dart';

class TasksFilter extends StatefulWidget {
  TasksFilter({super.key});

  @override
  State<TasksFilter> createState() => _TasksFilterState();
}

class _TasksFilterState extends State<TasksFilter> {
  bool selected = true;

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
            child: Row(
              children: [
                Radio(
                  groupValue: selected,
                  value: selected,
                  onChanged: (value) {
                    setState(() {
                      selected = !selected;
                    });
                  },
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  'Done',
                  style: Theme.of(context).textTheme.labelLarge!.copyWith(),
                )
              ],
            ),
          ),
          SizedBox(
            height: 40,
            child: Row(
              children: [
                Radio(
                  groupValue: selected,
                  value: !selected,
                  onChanged: (value) {
                    setState(() {
                      selected = !selected;
                    });
                  },
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  'Pending',
                  style: Theme.of(context).textTheme.labelLarge!.copyWith(),
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
