import 'package:flutter/material.dart';

class Tile extends StatelessWidget {
  final IconData icon;
  final String head;
  final String dec;
  final Color color;
  const Tile({required this.icon, required this.head, required this.dec, required this.color, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){

      },
      child: Container(
        //width: 150,
        height: 50,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(width: 12,),
            Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(45),
                color: Colors.grey.shade300,
              ),
              child: Icon(icon, color: color,),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 6,),
                    Text(head, style: TextStyle(fontSize: 18),),
                    Text(dec, style: TextStyle(color: Colors.grey, fontSize: 15),)
                  ],
                ),
                const Icon(Icons.arrow_forward_ios_outlined)
              ],
            )
          ],
        ),
      ),
    );
  }
}
