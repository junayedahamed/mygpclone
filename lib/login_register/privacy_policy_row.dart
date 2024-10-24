import 'package:flutter/material.dart';

class PrivacyPolicyRow extends StatelessWidget {
  const PrivacyPolicyRow(
      {super.key,
      required this.tc,
      required this.pp,
      required this.onPressed1,
      required this.onPressed2});
  final String tc;
  final String pp;
  final VoidCallback onPressed1;
  final VoidCallback onPressed2;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: onPressed1,
          child: Text(
            tc,
            style: const TextStyle(color: Colors.blue, fontSize: 13),
          ),
        ),
        const Text(
          " and ",
          style: TextStyle(fontSize: 13),
        ),
        GestureDetector(
          onTap: onPressed2,
          child: Text(
            pp,
            style: const TextStyle(
              fontSize: 13,
              color: Colors.blue,
            ),
          ),
        ),
      ],
    );
  }
}
