
import 'package:flutter/material.dart';
import 'package:techcorp/navigation.dart';
import 'package:techcorp/container.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F8F5),

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: const Text(
          'About Us',
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.bold,
            color: Color(0xFF1B3B2F),
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Color(0xFF1B3B2F),
            size: 20,
          ),
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/home');
          },
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  color: const Color(0xFFD4AF37).withOpacity(0.6),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.04),
                    blurRadius: 8,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.track_changes,
                        color: Color(0xFFD4AF37),
                        size: 26,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Our Vision',
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF1B3B2F),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 12),
                  Text(
                    'Our vision is to empower innovation and deliver exceptional digital experiences through creative technology solutions.',
                    style: TextStyle(
                      color: Color(0xFF555555),
                      fontSize: 14,
                      height: 1.6,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),

            const Text(
              'Our Mission',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1B3B2F),
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              'We help businesses grow by providing reliable software, modern applications, and smart digital solutions.',
              style: TextStyle(
                fontSize: 14,
                color: Color(0xFF555555),
                height: 1.6,
              ),
            ),

            const SizedBox(height: 25),

            const Text(
              'Our Achievements',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1B3B2F),
              ),
            ),

            const SizedBox(height: 14),

            Row(
              children: const [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(right: 5),
                    child: ContainerItem(
                      icon: Icons.work_outline,
                      title: '+50 Projects',
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: ContainerItem(
                      icon: Icons.people_outline,
                      title: '+30 Clients',
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: ContainerItem(
                      icon: Icons.timeline,
                      title: '5 Years',
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 28),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/contact');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF1B3B2F),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text(
                  'Contact Us',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: const BottomNavBar(selectedIndex: 1),
    );
  }
}
