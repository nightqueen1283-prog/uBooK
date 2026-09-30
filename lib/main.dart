import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'uBooK',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const WelcomeScreen(), // প্রথমে এই স্প্ল্যাশ/ওয়েলকাম স্ক্রিন দেখাবে
    );
  }
}

// ১. ওয়েলকাম স্ক্রিন (যা আপনি এখন দেখছেন)
class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    super.initState();
    
    // ৩ সেকেন্ড পর স্বয়ংক্রিয়ভাবে হোম পেজে চলে যাবে
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.deepPurple, // সুন্দর একটি ব্যাকগ্রাউন্ড কালার দিতে পারেন
      body: Center(
        child: Text(
          'Welcome to uBooK!',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

// ২. সোশ্যাল মিডিয়ার মূল হোম পেজ (যেখানে ফিড বা পোস্ট দেখাবে)
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('uBooK - Social Feed'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: const Center(
        child: Text(
          'আপনার সোশ্যাল মিডিয়ার মেইন ফিড এখানে আসবে! 🎉',
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
