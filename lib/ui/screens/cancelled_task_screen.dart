import 'package:flutter/material.dart';
import 'package:task_manager/ui/widgets/task_card.dart';
import 'package:task_manager/ui/widgets/tm_app_bar.dart';

class CancelledTaskScreen extends StatefulWidget {
  const CancelledTaskScreen({super.key});

  @override
  State<CancelledTaskScreen> createState() => _CancelledTaskScreenState();
}

class _CancelledTaskScreenState extends State<CancelledTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: TMAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: ListView.separated(

            itemBuilder: (context,index){
              // return TaskCard(status: 'Canceled', cardColor: Colors.red,);
              return Text('');
            },
            separatorBuilder: (context,index){
              return SizedBox(height: 2,);
            },
            itemCount: 10),
      ),
    );
  }
}