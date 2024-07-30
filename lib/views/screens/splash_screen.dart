import 'package:flutter/material.dart';
import 'package:scanner_app/views/screens/onboarding1.dart';
import 'package:svg_flutter/svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.push(context, MaterialPageRoute(builder: (ctx) {
        return const Onboarding1();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF333333),
      body: Center(
        child: SvgPicture.asset("assets/icons/qrcode_icon.svg"),
      ),
    );
  }
}
