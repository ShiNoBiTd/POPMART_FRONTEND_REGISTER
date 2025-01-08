import 'package:flutter/material.dart';
import 'homepage.dart';// นำเข้า HomepageExample

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomepageExample(); // เรียกใช้ HomepageExample
    
  }
}
