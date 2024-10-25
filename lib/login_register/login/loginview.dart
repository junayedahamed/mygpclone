import 'package:flutter/material.dart';
import 'package:mygp/home/pages/home_page.dart';
import 'package:mygp/login_register/login/login_button.dart';

class Loginview extends StatelessWidget {
  Loginview({super.key});
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
      ),
      body: SizedBox.expand(
        child: Column(
          children: [
            Image.asset(
              "images/gplogo.png",
              height: 50,
            ),
            const SizedBox(
              height: 80,
            ),
            SizedBox(
              width: 320,
              child: TextField(
                controller: controller,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            LoginButton(
              buttonname: "Continue",
              onPressed: () {
                if (controller.text.startsWith("017") &&
                    controller.text.length == 11) {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      backgroundColor: Colors.red,
                      dismissDirection: DismissDirection.horizontal,
                      content: Text(
                        "Enter valid Gp number!!",
                      ),
                    ),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}



