import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About'),
        backgroundColor: const Color(0xFF9B4F3E),
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  'assets/images/museum_logo.png',
                  height: 120,
                ),
              ),
              const SizedBox(height: 24),
              const Text(
                'Museum of Islamic Art Malaysia',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1F4E5F),
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),
              const Text(
                'About the Museum',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1F4E5F),
                ),
              ),
              const SizedBox(height: 12),
              const Text(
                'The Museum of Islamic Art Malaysia houses one of the most comprehensive collections of Islamic art in the region. Established in 1998, the museum aims to showcase the rich cultural heritage of Islamic civilization through its diverse collection of artifacts, manuscripts, and artworks.',
                style: TextStyle(
                  fontSize: 16,
                  height: 1.6,
                  color: Color(0xFF5A6E72),
                ),
              ),
              const SizedBox(height: 24),
              const Text(
                'Our Mission',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1F4E5F),
                ),
              ),
              const SizedBox(height: 12),
              const Text(
                'To preserve, study, and present Islamic art and cultural heritage for education, inspiration, and enjoyment of visitors from Malaysia and around the world. We strive to promote understanding and appreciation of Islamic civilization through our collections and educational programs.',
                style: TextStyle(
                  fontSize: 16,
                  height: 1.6,
                  color: Color(0xFF5A6E72),
                ),
              ),
              const SizedBox(height: 24),
              const Text(
                'Our Collection',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1F4E5F),
                ),
              ),
              const SizedBox(height: 12),
              const Text(
                'The museum\'s collection spans over a thousand years of Islamic art and culture, featuring artifacts from across the Islamic world, including the Middle East, North Africa, South and Southeast Asia. The collection includes:\n\n• Manuscripts and calligraphy\n• Ceramics and glassware\n• Textiles and carpets\n• Metalwork and jewelry\n• Architectural elements\n• Scientific instruments',
                style: TextStyle(
                  fontSize: 16,
                  height: 1.6,
                  color: Color(0xFF5A6E72),
                ),
              ),
              const SizedBox(height: 24),
              const Text(
                'Educational Programs',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1F4E5F),
                ),
              ),
              const SizedBox(height: 12),
              const Text(
                'The museum offers a variety of educational programs for visitors of all ages, including:\n\n• Guided tours\n• Workshops and demonstrations\n• Lectures and seminars\n• School programs\n• Family activities',
                style: TextStyle(
                  fontSize: 16,
                  height: 1.6,
                  color: Color(0xFF5A6E72),
                ),
              ),
              const SizedBox(height: 24),
              const Text(
                'Contact Us',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1F4E5F),
                ),
              ),
              const SizedBox(height: 12),
              const Text(
                'Phone: +603-2092-7070\nEmail: info@museumislamicart.my\nWebsite: www.museumislamicart.my',
                style: TextStyle(
                  fontSize: 16,
                  height: 1.6,
                  color: Color(0xFF5A6E72),
                ),
              ),
              const SizedBox(height: 32),
              const Text(
                '© 2025 Museum of Islamic Art Malaysia. All rights reserved.',
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF8C6E4A),
                  fontStyle: FontStyle.italic,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
