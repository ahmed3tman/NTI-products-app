import 'package:app5/core/extensin.dart';
import 'package:app5/core/validator.dart';
import 'package:app5/features/auth/view/screen/signin.dart';
import 'package:app5/features/auth/view/widget/text_field.dart';
import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(height: 100),
              Text("Sign Up", style: TextStyle(fontSize: 30)),

              SizedBox(height: 60),
              MyTextField(
                keyboardType: TextInputType.name,
                label: "Name",
                prefixIcon: Icons.person,
                validator: MyValidators.displayNamevalidator,
              ),
              SizedBox(height: 20),
              MyTextField(
                keyboardType: TextInputType.phone,
                label: "National Id",
                prefixIcon: Icons.person,
                validator: MyValidators.nationalIdValidator,
              ),
              SizedBox(height: 20),
              MyTextField(
                keyboardType: TextInputType.phone,
                label: "Phone",
                prefixIcon: Icons.phone,
                validator: MyValidators.phoneValidator,
              ),
              SizedBox(height: 20),
              MyTextField(
                keyboardType: TextInputType.emailAddress,
                label: "Email",
                prefixIcon: Icons.email,
                validator: MyValidators.emailValidator,
              ),
              SizedBox(height: 20),
              MyTextField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                label: "Password",
                prefixIcon: Icons.lock,
                validator: MyValidators.passwordValidator,
              ),
              SizedBox(height: 20),
              MyTextField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                label: "Token",
                prefixIcon: Icons.lock,
                validator: MyValidators.tokenValidator,
              ),

              SizedBox(height: 60),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(50),
                  ),
                  onPressed: () {
                    context.pushNav(SignInScreen());
                  },
                  child: const Text('sign up', style: TextStyle(fontSize: 20)),
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account?"),
                  TextButton(
                    onPressed: () {
                      context.pushNav(SignInScreen());
                    },
                    child: const Text('Sign In'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
