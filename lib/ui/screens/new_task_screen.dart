import 'package:flutter/material.dart';
import 'package:task_manager/ui/widgets/task_card.dart';
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
      backgroundColor: Colors.grey[200],
      appBar: TMAppBar(),
      body: Column(
        children: [
          SizedBox(height: 15.0),

          Padding(
            padding: const EdgeInsets.all(3.0),
            child: SizedBox(
              height: 90.0,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index){
                  return TaskCountByStatus(
                    title: 'Cancelled',
                    count: index+5,
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(width: 4.0);
                }
              ),
            ),
          ),

          Expanded(
            child: ListView.separated(
              itemCount: 10,
              itemBuilder: (context, index){
                return TaskCard();
              },
              separatorBuilder: (context, index) {
                return SizedBox(
                  height: 4.0,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}