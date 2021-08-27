import 'package:app_baneco/app/data/models/user_model.dart';
import 'package:app_baneco/app/modules/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class Users extends StatelessWidget {
  const Users({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (_) => Obx(
        () {
          print("Dibujando Lista de usuarios");
          return _.isLoading == true
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : ListView.builder(
                  itemCount: _.users.length,
                  itemBuilder: (context, index) =>
                      UserItem(user: _.users[index]),
                );
        },
      ),
    );
  }
}

class UserItem extends StatelessWidget {
  UserItem({
    required this.user,
  });

  final UserModel user;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (_) => ListTile(
        onTap: () {
          _.goDetail(user);
        },
        title: Text("${user.firstName} ${user.lastName}"),
        subtitle: Text("${user.email}"),
        leading: Obx(
          () => GestureDetector(
            onTap: () {
              _.changeColor(_.status.value);
            },
            child: CircleAvatar(
              backgroundColor: _.status == true ? Colors.green : Colors.red,
              child: Text("${user.id}"),
            ),
          ),
        ),
        trailing: Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
