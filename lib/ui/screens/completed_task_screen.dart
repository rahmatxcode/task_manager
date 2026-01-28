import 'package:flutter/material.dart';
import 'package:task_manager/ui/widgets/task_card.dart';
import 'package:task_manager/ui/widgets/tm_app_bar.dart';

class CompletedTaskScreen extends StatefulWidget {
  const CompletedTaskScreen({super.key});

  @override
  State<CompletedTaskScreen> createState() => _CompletedTaskScreenState();
}

class _CompletedTaskScreenState extends State<CompletedTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TMAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 3.0),
        child: ListView.separated(
          itemBuilder: (context, index){
            return TaskCard(status: 'Completed', cardColor: Colors.green,);
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