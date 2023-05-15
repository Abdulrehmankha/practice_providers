import 'package:flutter/material.dart';
import 'package:practice_pro/screens/clients_environment/provider_user_list.dart';

class UserCard extends StatelessWidget {
  final ProviderUserList AppUsersList;
  final index;
  const UserCard({
    Key? key,
    required this.AppUsersList,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      padding: EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.3),
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        title: Text(AppUsersList.users![index].name),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(AppUsersList.users![index].email),
            Text(AppUsersList.users![index].phone),
            Text(AppUsersList.users![index].website),
          ],
        ),
        leading: CircleAvatar(
          child: Text(AppUsersList.users![index].name[0]),
        ),
      ),
    );
  }
}
