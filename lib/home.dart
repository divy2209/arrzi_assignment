import 'package:arrzi_assignment/bottom.dart';
import 'package:arrzi_assignment/card.dart';
import 'package:arrzi_assignment/earning.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: Container(
        height: 70,
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              spreadRadius: 0,
              blurRadius: 8
            )
          ]
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Bottom(icon: Icons.home, text: "Home", check: true,),
              Bottom(icon: Icons.subscriptions, text: "Opportunities", check: false,),
              Bottom(icon: Icons.messenger_outline, text: "Messages", check: false),
              Bottom(icon: Icons.exit_to_app, text: "Exit", check: false)
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 45, 10, 10),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: size.height*0.25,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blue
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("YOUR CURRENT WORK", style: TextStyle(color: Colors.white)),
                    const Text("Van Driver", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold)),
                    const Text("At Amazon", style: TextStyle(color: Colors.white)),
                    const SizedBox(height: 35,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const[
                        Earning(head: "Total Earnings", earn: "12,290",),
                        Earning(head: "Last Month", earn: "1,345")
                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 25),
            const Tile(icon: Icons.watch_later, head: "Clocking", dec: "Keep track of your working hours", color: Colors.red,),
            const SizedBox(height: 25, child: Divider(thickness: 1, indent: 70,),),
            const Tile(icon: Icons.table_chart, head: "Shifts", dec: "Accept and reject your shift", color: Colors.black,),
            const SizedBox(height: 25, child: Divider(thickness: 1, indent: 70,),),
            const Tile(icon: Icons.assignment, head: "Contract details", dec: "Review & download your contracts", color: Colors.blue,),
            const SizedBox(height: 25, child: Divider(thickness: 1, indent: 70,),),
            const Tile(icon: Icons.payment, head: "Payslips", dec: "Access all your past payslips", color: Colors.green,),
            const SizedBox(height: 25, child: Divider(thickness: 1, indent: 70,),),
            const Tile(icon: Icons.file_copy, head: "Other documents", dec: "Find out your part time job documents", color: Colors.purple,),
            const SizedBox(height: 25, child: Divider(thickness: 1, indent: 70,),),
            const Tile(icon: Icons.list_alt, head: "Report an issue", dec: "Let us know if you encounter any issue", color: Colors.yellow,),
          ],
        ),
      ),
    );
  }
}
