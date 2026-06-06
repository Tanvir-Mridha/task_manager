import 'package:flutter/material.dart';

import '../data/model/task_model.dart';
import '../widget/task_card.dart';

class CancelTaskScreen extends StatefulWidget {
  const CancelTaskScreen({super.key});

  @override
  State<CancelTaskScreen> createState() => _CancelTaskScreenState();
}

class _CancelTaskScreenState extends State<CancelTaskScreen> {
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
              status: 'Cancel',
              email: 'eewe',
              createdDate: '20/10/2026',
            ),
            cartColor: Colors.red,
            refreshParent: () {},
          );
        },
      ),
    );
  }
}
