import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/login_controler.dart';

class LoginButton extends StatelessWidget {
  LoginButton({super.key});

  final loginController = Get.find<LoginControler>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(padding: const EdgeInsets.all(15)),
        onPressed: login,
        child: const Text(
          "Login",
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }

  void login() {
    if (loginController.loginFomrKey.value.currentState!.validate()) {
      loginController.loginFomrKey.value.currentState!.save();
      loginController.isValidated.value = true;

      Timer(const Duration(seconds: 1), () {
        loginController.email.value = "";
        loginController.password.value = "";
        loginController.isValidated.value = false;
        Get.offNamed("/home");
      });
    }
  }
}
