import 'package:flutter/material.dart';

class Bottom extends StatelessWidget {
  final IconData icon;
  final String text;
  final bool check;
  const Bottom({required this.icon, required this.text, required this.check, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
       children: [
         Icon(icon, color: check ? Colors.blue : Colors.black,),
         Text(text, style: TextStyle(color: check ? Colors.blue : Colors.black),)
       ],
    );
  }
}
