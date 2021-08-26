import 'package:app_baneco/app/modules/login/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      builder: (_) => Scaffold(
        /* appBar: AppBar(
          title: Text("Login"),
        ), */
        body: Center(
          child: GestureDetector(
            onTap: _.loadHome,
            /* onTap: () {
              _.loadHome();
            }, */
            child: CircleAvatar(
              radius: 30.0,
              child: Icon(Icons.arrow_forward_ios),
            ),
          ),
        ),
      ),
    );
  }
}
