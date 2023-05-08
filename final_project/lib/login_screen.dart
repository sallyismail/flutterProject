import 'package:final_project/all_tasks.dart';
import 'package:final_project/signup.dart';
import 'package:final_project/widgets/button.dart';
import 'package:final_project/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Login',
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
              height: 30,
            ),
            SharedButton(
              title: 'Login',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AllTaskScreen()),
                );
              },
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SginUpScreen()),
                      );
                    },
                    child: Text(
                      'Don\'t have account?',
                      style: TextStyle(fontSize: 12),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
