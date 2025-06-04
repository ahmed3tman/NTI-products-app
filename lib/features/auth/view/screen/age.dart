import 'package:app5/core/extensin.dart';
import 'package:app5/features/auth/view/widget/text_field.dart';
import 'package:app5/features/home/home.dart';
import 'package:flutter/material.dart';

class AgeCalc extends StatefulWidget {
  const AgeCalc({super.key});

  @override
  State<AgeCalc> createState() => _AgeCalcState();
}

class _AgeCalcState extends State<AgeCalc> {
  final BirthController = TextEditingController();
  final CurrentController = TextEditingController();

  int? age;

  void calc() {
    final birthYear = int.tryParse(BirthController.text);
    final currentYear = int.tryParse(CurrentController.text);

    if (birthYear != null && currentYear != null) {
      setState(() {
        age = currentYear - birthYear;
      });
    }
  }

  @override
  void dispose() {
    BirthController.dispose();
    CurrentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(height: 200),
              Text("Age Calculator", style: TextStyle(fontSize: 30)),

              SizedBox(height: 60),
              MyTextField(
                controller: CurrentController,
                keyboardType: TextInputType.number,
                label: 'Current Year',
              ),
              SizedBox(height: 20),
              MyTextField(
                controller: BirthController,
                keyboardType: TextInputType.number,
                label: 'Birth Year',
              ),
              SizedBox(height: 20),
              MyTextField(
                keyboardType: TextInputType.number,
                label: 'Age',
                controller: TextEditingController(
                  text: age != null ? age.toString() : '',
                ),
                enabled: false,
              ),
              SizedBox(height: 20),

              SizedBox(
                width: 200,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(50),
                  ),
                  onPressed: calc,
                  child: const Text(
                    'Calculate',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(50),
                  ),
                  onPressed: () {
                    context.pushNav(Home());
                  },
                  child: const Text('Home', style: TextStyle(fontSize: 20)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
