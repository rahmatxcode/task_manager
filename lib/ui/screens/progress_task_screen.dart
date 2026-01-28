import 'package:flutter/material.dart';
import 'package:task_manager/ui/widgets/task_card.dart';
import 'package:task_manager/ui/widgets/tm_app_bar.dart';

class ProgressTaskScreen extends StatefulWidget {
  const ProgressTaskScreen({super.key});

  @override
  State<ProgressTaskScreen> createState() => _ProgressTaskScreenState();
}

class _ProgressTaskScreenState extends State<ProgressTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TMAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 3.0),
        child: ListView.separated(
          itemBuilder: (context, index){
            return TaskCard(status: 'In Progress', cardColor: Colors.purple,);
          },
          separatorBuilder: (context, index){
            return SizedBox(height: 4,);
          },
          itemCount: 10,
        ),
      ),
    );
  }
}