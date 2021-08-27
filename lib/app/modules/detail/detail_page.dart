import 'package:app_baneco/app/modules/detail/detail_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DetailController>(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: Text("Detail"),
        ),
        body: Column(
          children: [
            Text(
              "${_.user.firstName}",
              style: Theme.of(context)
                  .textTheme
                  .subtitle1
                  ?.copyWith(fontWeight: FontWeight.bold, color: Colors.black),
            ),
            Divider(),
            Text(
              "${_.user.lastName}",
              style: Theme.of(context)
                  .textTheme
                  .subtitle1
                  ?.copyWith(fontWeight: FontWeight.bold, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
