import 'package:flutter/material.dart';
import 'toppage.dart'; // นำเข้า Homepage
import 'profile.dart';

// Bottom Navbar widget
class BottomNavbarExample extends StatefulWidget {
  const BottomNavbarExample({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _BottomNavbar createState() => _BottomNavbar();
}

class _BottomNavbar extends State<BottomNavbarExample> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const Homepage(), // หน้าแรกคือ Homepage
    const Center(child: Text('No Booking', style: TextStyle(fontSize: 24))),
    const ProfilePage(),
  ];

  void onItemTap(int index) {
    setState(() {
      _selectedIndex = index; // เมื่อกดที่ไอคอนใน BottomNav ให้เปลี่ยนหน้า
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex], // แสดงหน้าเดิมตามที่เลือก
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: onItemTap,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book_online),
            label: 'Booking',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

