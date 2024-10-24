import 'package:flutter/material.dart';
import 'package:mygp/home/pages/bottom%20navigation/bottom_navigation.dart';
import 'package:mygp/login_register/login/loginview.dart';
import 'package:mygp/login_register/myfield_button_reg.dart';
import 'package:mygp/login_register/privacy_policy_row.dart';
import 'package:mygp/privacy%20policy/privacy_policy.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Everything in 1 app",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
      ),
      body: SizedBox.expand(
        child: Column(
          children: [
            Image.asset(
              'images/register.jpg',
              width: w - 20,
            ),
            const SizedBox(
              height: 140,
            ),
            MyfieldButtonReg(
              buttonname: "Sign in",
              onPressed: () {
                // print("object");
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Loginview(),
                  ),
                );
              },
              icon: Icons.telegram,
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => BottomNavigation(),
                  ),
                );
              },
              child: const Text(
                "Use as a guest",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.blue,
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(
              height: 7,
            ),
            const Text(
              "By proceeding you agree to our",
              style: TextStyle(fontSize: 13),
            ),
            PrivacyPolicyRow(
              tc: "Terms & Condition",
              pp: "Privacy Policy",
              onPressed1: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const PrivacyPolicy(),
                  ),
                );
              },
              onPressed2: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const PrivacyPolicy(),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
