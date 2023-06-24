import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../controllers/login_controler.dart';

class AuthenticatingOverlay extends StatelessWidget {
  AuthenticatingOverlay({super.key});

  final loginCtrl = Get.find<LoginControler>();

  @override
  Widget build(BuildContext context) {
    return Obx(() => loginCtrl.isValidated.value
        ? Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.black.withOpacity(0.5),
            child: const Center(
              child: CircularProgressIndicator(),
            ),
          )
        : const SizedBox());
  }
}
