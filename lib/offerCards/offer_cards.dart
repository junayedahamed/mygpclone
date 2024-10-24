import 'package:flutter/material.dart';

class OfferCards extends StatelessWidget {
  const OfferCards(
      {super.key,
      required this.img,
      required this.title,
      required this.onPressed});
  final String img;
  final String title;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              img,
              fit: BoxFit.cover,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                Text(
                  title,
                  style: const TextStyle(color: Colors.blue),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
