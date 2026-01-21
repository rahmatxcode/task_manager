import 'package:flutter/material.dart';
import 'package:task_manager/ui/screens/update_profile_screen.dart';
class TMAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TMAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.green,
      title: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => UpdateProfileScreen()));
        },
        child: Row(
          //spacing: 8.0, //deprecated in Row widget after flutter 3.22
          children: [
            CircleAvatar(),
            SizedBox(width: 8.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Md Rahmat Ullah Khan',
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        color: Colors.white,
                  ),
                ),
                Text(
                  'rahmatullahkhan77w@gmail.com',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.logout),
        ),
      ],
    );
  }
  
  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}