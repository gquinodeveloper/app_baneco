import 'package:app_baneco/app/modules/home/home_controller.dart';
import 'package:app_baneco/app/modules/home/widgets/users.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (_) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: Text("Home"),
        ),
        body: Users(),
      ),
    );
  }
}
