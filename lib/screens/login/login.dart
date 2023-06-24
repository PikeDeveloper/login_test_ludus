import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/login_controler.dart';
import 'widgets/authenticating_overlay.dart';
import 'widgets/input_email.dart';
import 'widgets/input_password.dart';
import 'widgets/login_button.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final loginController = Get.put(LoginControler());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Login"),
      ),
      body: Stack(
        children: [
          SafeArea(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(40.0),
              child: Form(
                key: loginController.loginFomrKey.value,
                child: Column(
                  children: [
                    InputInputEmail(),
                    const SizedBox(height: 20),
                    InputInputPassword(),
                    const SizedBox(height: 20),
                    LoginButton(),
                  ],
                ),
              ),
            ),
          ),
          AuthenticatingOverlay()
        ],
      ),
    );
  }
}
