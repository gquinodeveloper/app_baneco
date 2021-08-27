import 'package:app_baneco/app/modules/login/login_controller.dart';
import 'package:app_baneco/app/modules/login/widgets/login_form.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      builder: (_) => Scaffold(
        backgroundColor: Colors.white,
        body: LoginForm(),
      ),
    );
  }
}
