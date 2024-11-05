// lib/views/home_screen.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_task/views/auth%20screens/login_screen.dart';
import '../controllers/auth_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AuthController authController = Get.find();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              authController.signOut();
              Get.offAll(() => const LoginScreen());
            },
          ),
        ],
      ),
      body: Center(
        child: Obx(() {
          return Text('Welcome, ${authController.user.value?.email}');
        }),
      ),
    );
  }
}