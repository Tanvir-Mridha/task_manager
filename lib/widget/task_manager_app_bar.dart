import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/app_color.dart';
class TaskManagerAppBar extends StatelessWidget implements PreferredSize {
  const TaskManagerAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColor.Pcolor,
      title: Row(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage('https://cdn.ostad.app/user/avatar/2026-01-02T15-12-00.273Z-cropped_image%20(1)%20(1).png'),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Tanvir Mridha',style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  color: Colors.white
              ),),
              Text('tanvirmridha@gmail.com',style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: Colors.white
              ),)
            ],
          )
        ],
      ),
      actions: [
        IconButton(onPressed: (){}, icon: Icon(Icons.logout))
      ],
    );
  }

  @override
  // TODO: implement child
  Widget get child => throw UnimplementedError();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}