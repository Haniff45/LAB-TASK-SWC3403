import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Museum logo and name
            Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/museum_logo.png',
                    height: 120,
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Museum of Islamic Art Malaysia',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF90CAF9),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Discover the beauty of Islamic art and culture',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white70,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            
            const SizedBox(height: 40),
            
            // Main options
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  children: [
                    _buildOptionCard(
                      context,
                      'Exhibitions',
                      'Ongoing and past exhibitions',
                      Icons.museum,
                      const Color(0xFF90CAF9),
                      () => Navigator.pushNamed(context, '/exhibitions'),
                    ),
                    _buildOptionCard(
                      context,
                      'Visitor Information',
                      'Tickets, hours, and location',
                      Icons.info,
                      const Color(0xFFCE9A6C),
                      () => Navigator.pushNamed(context, '/visitor-info'),
                    ),
                    _buildOptionCard(
                      context,
                      'Gallery',
                      'Islamic artifacts and artworks',
                      Icons.photo_library,
                      const Color(0xFF81C784),
                      () => Navigator.pushNamed(context, '/gallery'),
                    ),
                    _buildOptionCard(
                      context,
                      'About',
                      'About the museum',
                      Icons.history_edu,
                      const Color(0xFFFFB74D),
                      () => Navigator.pushNamed(context, '/about'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOptionCard(
    BuildContext context,
    String title,
    String subtitle,
    IconData icon,
    Color color,
    VoidCallback onTap,
  ) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(16),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 48,
                color: color,
              ),
              const SizedBox(height: 12),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 4),
              Text(
                subtitle,
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.white60,
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
