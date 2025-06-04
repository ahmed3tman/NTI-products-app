import 'package:app5/core/extensin.dart';
import 'package:app5/core/validator.dart';
import 'package:app5/features/auth/view/widget/text_field.dart';
import 'package:app5/features/home/home.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(height: 200),
              Text("Sign In", style: TextStyle(fontSize: 30)),

              SizedBox(height: 60),
              MyTextField(
                keyboardType: TextInputType.emailAddress,
                label: 'Email',
                prefixIcon: Icons.email,
                validator: MyValidators.emailValidator,
              ),
              SizedBox(height: 20),
              MyTextField(
                obscureText: true,
                keyboardType: TextInputType.visiblePassword,
                validator: MyValidators.passwordValidator,
                label: 'Password',
                prefixIcon: Icons.lock,
              ),

              SizedBox(height: 60),
              Container(
                width: 200,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(50),
                  ),
                  onPressed: () {
                    context.pushNav(Home());
                  },
                  child: const Text('Sign In', style: TextStyle(fontSize: 20)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
