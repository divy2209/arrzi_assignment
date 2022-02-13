import 'package:flutter/material.dart';

class Earning extends StatelessWidget {
  final String head;
  final String earn;
  const Earning({required this.head, required this.earn, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(head, style: const TextStyle(color: Colors.white),),
        Row(
          children: [
            Text(earn, style: const TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.w600)),
            const SizedBox(width: 15,),
            const Text("GBP", style: TextStyle(color: Colors.white)),
          ],
        )
      ],

    );
  }
}
