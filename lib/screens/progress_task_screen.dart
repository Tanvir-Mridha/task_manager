import 'package:flutter/material.dart';

import '../data/model/task_model.dart';
import '../widget/task_card.dart';

class ProgressTaskScreen extends StatefulWidget {
  const ProgressTaskScreen({super.key});

  @override
  State<ProgressTaskScreen> createState() => _ProgressTaskScreenState();
}

class _ProgressTaskScreenState extends State<ProgressTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return TaskCard(
            taskModel: TaskModel(
              id: '10',
              title: 'Demo',
              description: 'demo des',
              status: 'Progress',
              email: 'eewe',
              createdDate: '20/10/2026',
            ),
            cartColor: Colors.pink.shade700,
            refreshParent: () {},
          );
        },
      ),
    );
  }
}
