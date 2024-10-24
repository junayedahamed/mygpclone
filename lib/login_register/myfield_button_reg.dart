import 'package:flutter/material.dart';

class MyfieldButtonReg extends StatelessWidget {
  const MyfieldButtonReg({
    super.key,
    required this.buttonname,
    required this.onPressed,
    required this.icon,
  });
  final IconData icon;
  final String buttonname;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    return SizedBox(
      width: w - 55,
      child: FilledButton(
        style: FilledButton.styleFrom(
          shape: const ContinuousRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(5))),
          backgroundColor: Colors.blue.shade700,
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 30,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              buttonname,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
