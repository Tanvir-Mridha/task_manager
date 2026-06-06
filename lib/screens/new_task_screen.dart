import 'package:flutter/material.dart';
import 'package:task_manager/data/model/task_model.dart';

import '../utils/app_color.dart';
import '../widget/task_card.dart';
import '../widget/task_count_by_status.dart';
import '../widget/task_manager_app_bar.dart';

class NewTaskScreen extends StatefulWidget {
  const NewTaskScreen({super.key});

  @override
  State<NewTaskScreen> createState() => _NewTaskScreenState();
}

class _NewTaskScreenState extends State<NewTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 90,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return TaskCountByStatus(title: 'New', count: 5);
                },
                separatorBuilder: (context, index) {
                  return SizedBox(width: 0);
                },
                itemCount: 4,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
                itemBuilder: (context,index){
              return TaskCard(taskModel: TaskModel(id: '10', title: 'Demo', description:'demo des', status: 'new', email: 'eewe', createdDate: '20/10/2026'), cartColor: Colors.blue, refreshParent: () {  },);
            
            }),
          )
        ],
      ),
    );
  }
}


