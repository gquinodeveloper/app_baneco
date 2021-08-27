import 'package:app_baneco/app/core/theme/apptheme.dart';
import 'package:app_baneco/app/global/input_text.dart';
import 'package:app_baneco/app/global/primary_button.dart';
import 'package:app_baneco/app/modules/login/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      builder: (_) => Container(
        margin: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InputText(
              //initialValue: "16603969",
              iconPrefix: Icons.email_outlined,
              iconColor: Colors.black,
              border: InputBorder.none,
              keyboardType: TextInputType.emailAddress,
              validator: null,
              labelText: "Email",
              filled: false,
              enabledBorderColor: Colors.black26,
              focusedBorderColor: AppTheme.kPrimaryColor,
              fontSize: 14.0,
              fontColor: Colors.black,
              onChanged: _.onChangeEmail,
            ),
            SizedBox(height: 10.0),
            InputText(
              iconPrefix: Icons.lock_outline,
              iconColor: Colors.black,
              border: InputBorder.none,
              keyboardType: TextInputType.text,
              obscureText: true,
              maxLines: 1,
              validator: null,
              labelText: "Password",
              filled: false,
              enabledBorderColor: Colors.black26,
              focusedBorderColor: AppTheme.kPrimaryColor,
              fontSize: 14.0,
              fontColor: Colors.black,
              onChanged: _.onChangePassword,
            ),
            SizedBox(height: 30.0),
            PrimaryButton(
              onPressed: _.doauth,
              title: "Ingresar",
            ),
          ],
        ),
      ),
    );
  }
}
