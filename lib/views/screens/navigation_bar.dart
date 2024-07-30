import 'package:flutter/material.dart';
import 'package:scanner_app/views/screens/home_screen.dart';
import 'package:scanner_app/views/screens/qr_generate.dart';

class NavigationBars extends StatefulWidget {
  const NavigationBars({super.key});

  @override
  State<NavigationBars> createState() => _NavigationBarsState();
}

class _NavigationBarsState extends State<NavigationBars> {
  int curIndex = 1;
  List<Widget> pages = [
    const QrGenerateScreen(),
    const HomeScreen(),
    const Placeholder(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(191, 60, 63, 79),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(
                  curIndex == 0 ? const Color(0xffFDB623) : Colors.grey[800],
                ),
              ),
              onPressed: () {
                curIndex = 0;
                setState(() {});
              },
              icon: const Icon(
                Icons.qr_code_2,
                color: Colors.white,
              ),
            ),
            IconButton(
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(
                  curIndex == 1 ? const Color(0xffFDB623) : Colors.grey[800],
                ),
              ),
              onPressed: () {
                curIndex = 1;
                setState(() {});
              },
              icon: const Icon(
                Icons.qr_code_scanner_sharp,
                color: Colors.white,
              ),
            ),
            IconButton(
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(
                  curIndex == 2 ? const Color(0xffFDB623) : Colors.grey[800],
                ),
              ),
              onPressed: () {
                curIndex = 2;
                setState(() {});
              },
              icon: const Icon(
                Icons.history,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      body: pages[curIndex],
    );
  }
}
