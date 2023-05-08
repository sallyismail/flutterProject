import 'package:final_project/widgets/button.dart';
import 'package:final_project/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SginUpScreen extends StatelessWidget {
  SginUpScreen({super.key});

  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'SginUp',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SharedTextField(
              controller: nameController,
              validate: (value) {},
              hint: 'Your Name',
            ),
            const SizedBox(
              height: 20,
            ),
            SharedTextField(
              controller: passwordController,
              validate: (value) {},
              hint: 'Your Password',
            ),
            const SizedBox(
              height: 20,
            ),
            SharedTextField(
              controller: passwordConfirmController,
              validate: (value) {},
              hint: 'Confirm Your Password',
            ),
            const SizedBox(
              height: 30,
            ),
            SharedButton(
              title: 'SginUp',
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
