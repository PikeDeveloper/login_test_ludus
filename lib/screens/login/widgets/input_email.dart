import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/login_controler.dart';
import '../../../styles.dart';
import '../../../validators.dart';

class InputInputEmail extends StatelessWidget {
  InputInputEmail({super.key});

  final loginController = Get.put(LoginControler());
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: MyStyles.customInputDecoration("Email"),
      onChanged: (value) {
        loginController.email.value = value;
      },
      validator: Validators.email,
    );
  }
}
