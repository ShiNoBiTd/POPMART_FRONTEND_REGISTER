import 'package:flutter/material.dart';
import 'bottom_navbar.dart';


class HomepageExample extends StatelessWidget {
  const HomepageExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: BottomNavbarExample(),
      ) // Bottom navigation bar at the bottom
        );
      
    
  }
}