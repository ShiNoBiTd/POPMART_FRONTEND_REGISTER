import 'package:flutter/material.dart';

// Homepage widget
class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start, // แก้ไขตำแหน่งข้อความ
                    children: [
                      Text(
                        "Good Morning",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 15,
                          color: Color(0xFFB0BEC5),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "ShinoBi_Td",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.notifications,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: 400,
              height: 200,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: PageView(
                  children: [
                    Image.asset(
                      'assets/slide_pic1.png',
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      'assets/slide_pic2.jpg',
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      'assets/slide_pic3.png',
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),
            Container(
              alignment: Alignment.center,
              child: const Text(
                'Event',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: 2,
              width: double.infinity,
              color: Colors.black,
              margin: const EdgeInsets.symmetric(horizontal: 20),
            ),
            Card(
              elevation: 6,
              color: Colors.white,
              margin: const EdgeInsets.all(10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    contentPadding: const EdgeInsets.all(10),  // ลดระยะห่างจากขอบ
                    leading: SizedBox(
                      width: 50,
                      height: 50,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets/Event.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    title: const Text('SkullPanda Exclusive Event'),
                    subtitle: const Text('28 January 2024'),
                    trailing: ElevatedButton.icon(
                      onPressed: () {
                        // Handle button press
                      },
                      icon: const Icon(Icons.event),
                      label: const Text('Register'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
