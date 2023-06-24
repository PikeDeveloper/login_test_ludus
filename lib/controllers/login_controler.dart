import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginControler extends GetxController {
  var email = "".obs;
  var password = "".obs;
  var isValidated = false.obs;
  var loginFomrKey = GlobalKey<FormState>().obs;
}
