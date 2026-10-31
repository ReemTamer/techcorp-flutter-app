
import 'package:flutter/material.dart';
import 'package:techcorp/navigation.dart';
import 'package:techcorp/container.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F8F5),

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: const Text(
          'Contact Us',
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
                        Icons.contact_mail_outlined,
                        color: Color(0xFFD4AF37),
                        size: 26,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Get in Touch',
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
                    'Feel free to reach out to us for any inquiries or support. We are always happy to help.',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF555555),
                      height: 1.6,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),

            const Text(
              'Contact Information',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1B3B2F),
              ),
            ),

            const SizedBox(height: 14),

            const ContainerItem(
              icon: Icons.phone_outlined,
              title: '+123456789',
            ),

            const SizedBox(height: 12),

            const ContainerItem(
              icon: Icons.email_outlined,
              title: 'info@techcorp.com',
            ),

            const SizedBox(height: 12),

            const ContainerItem(
              icon: Icons.location_on_outlined,
              title: 'Cairo, Egypt',
            ),

            const SizedBox(height: 28),

            const Text(
              'Follow Us',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1B3B2F),
              ),
            ),

            const SizedBox(height: 14),

            Container(
              padding: const EdgeInsets.symmetric(vertical: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14),
                border: Border.all(
                  color: const Color(0xFFD4AF37).withOpacity(0.5),
                ),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.facebook, color: Color(0xFF1B3B2F), size: 28),
                  Icon(Icons.camera_alt_outlined, color: Color(0xFF1B3B2F), size: 28),
                  Icon(Icons.language, color: Color(0xFF1B3B2F), size: 28),
                ],
              ),
            ),

            const SizedBox(height: 25),
          ],
        ),
      ),

      bottomNavigationBar: const BottomNavBar(selectedIndex: 2),
    );
  }
}
