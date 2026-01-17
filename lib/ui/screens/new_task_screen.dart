import 'package:flutter/material.dart';
import 'package:task_manager/ui/widgets/task_count_by_status.dart';
import 'package:task_manager/ui/widgets/tm_app_bar.dart';

class NewTaskScreen extends StatefulWidget {
  const NewTaskScreen({super.key});

  @override
  State<NewTaskScreen> createState() => _NewTaskScreenState();
}

class _NewTaskScreenState extends State<NewTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TMAppBar(),
      body: Column(
        children: [
          SizedBox(height: 15.0),

          SizedBox(
            height: 90.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (context, index){
                return TaskCountByStatus(
                  title: 'Cancelled',
                  count: index+5,
                );
              }
            ),
          ),
        ],
      ),
    );
  }
}