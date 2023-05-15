import 'package:flutter/material.dart';
import 'package:practice_pro/screens/clients_environment/provider_user_list.dart';
import 'package:practice_pro/screens/widgets/user_card.dart';
import 'package:provider/provider.dart';


class UsersView extends StatefulWidget {
  const UsersView({Key? key}) : super(key: key);

  @override
  State<UsersView> createState() => _UsersViewState();
}

class _UsersViewState extends State<UsersView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xff0a0a0a),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: InkWell(
                onTap: (){
                  Navigator.of(context).pop();
                },
                child:
                const Icon(Icons.arrow_back_outlined, size: 20, color: Colors.white,)
            ),
          ),
        ],
        title: const Text(
          'Users',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ),
      body: Consumer<ProviderUserList>(
        builder: ((context, AppUsersList ,child)=> Center(
          child: ListView.builder(
            itemCount: AppUsersList.users.length,
            itemBuilder: (context, index){
              return UserCard(AppUsersList: AppUsersList, index: index);
            },
          ),
        )),
      ),
    );
  }
}
