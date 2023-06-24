import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/login_controler.dart';
import '../../../validators.dart';

class InputInputPassword extends StatelessWidget {
  InputInputPassword({super.key});
  final loginController = Get.put(LoginControler());

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.visiblePassword,
      obscureText: true,
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        labelText: "Password",
      ),
      onChanged: (value) {
        loginController.password.value = value;
      },
      validator: Validators.password,
    );
  }
}
