import 'package:flutter/material.dart';

class TaskCard extends StatelessWidget {
  const TaskCard({
    super.key, required this.status, required this.cardColor,
  });

  final String status;
  final Color cardColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Card(
        color: Colors.white,
        child: ListTile(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          title: Text(
            'This is task title',
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
              fontSize:18,
            ),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('This is task description'),
              Text('Date: 20-01-2026'),
              Row(
                children: [
                  Chip(
                    label: Text(status),
                    backgroundColor: cardColor,
                    labelStyle: TextStyle(
                      color: Colors.white,
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 18.0,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.edit_note_rounded, color: Colors.green,),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.delete, color: Colors.red,),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}