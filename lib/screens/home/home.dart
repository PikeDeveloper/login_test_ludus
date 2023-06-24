import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/login_controler.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final loginController = Get.put(LoginControler());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [],
          centerTitle: true,
          title: const Text("Home"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Home Screen"),
              const SizedBox(height: 20),
              ElevatedButton(
                style:
                    ElevatedButton.styleFrom(padding: const EdgeInsets.all(10)),
                onPressed: () {
                  Get.offNamed("/login");
                },
                child: const Text(
                  "Ir al Login",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ],
          ),
        ));
  }
}
