import 'package:flutter/material.dart';
import 'package:mygp/list_of_functionality/list_of_icon_names.dart';

class EverythingAtGlance extends StatelessWidget {
  const EverythingAtGlance({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            for (int i = 0; i < row1.length; i++) ...[
              Card(
                color: Colors.white,
                elevation: .2,
                child: IconButton(
                  onPressed: onPressed1[i],
                  icon: Icon(
                    row1[i],
                    color: Colors.blue,
                  ),
                ),
              )
            ],
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            for (int i = 0; i < names1.length; i++) ...[
              Text(names1[i]),
            ]
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            for (int i = 0; i < row2.length; i++) ...[
              Card(
                elevation: .2,
                color: Colors.white,
                child: IconButton(
                  onPressed: onPressed2[i],
                  icon: Icon(
                    row2[i],
                    color: Colors.blue,
                  ),
                ),
              )
            ],
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            for (int i = 0; i < name2.length; i++) ...[
              Text(name2[i]),
            ]
          ],
        )
      ],
    );
  }
}
