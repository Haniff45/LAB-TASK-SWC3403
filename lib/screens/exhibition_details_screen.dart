import 'package:flutter/material.dart';
import '../models/exhibition.dart';

class ExhibitionDetailsScreen extends StatelessWidget {
  const ExhibitionDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final exhibition = ModalRoute.of(context)!.settings.arguments as Exhibition;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250,
            pinned: true,
            backgroundColor: const Color(0xFF1F4E5F),
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                exhibition.title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(
                    exhibition.imageUrl,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Colors.black.withOpacity(0.7),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'About this Exhibition',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1F4E5F),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    exhibition.detailedDescription,
                    style: const TextStyle(
                      fontSize: 16,
                      height: 1.6,
                      color: Color(0xFF5A6E72),
                    ),
                  ),
                  const SizedBox(height: 24),
                  const Text(
                    'Exhibition Details',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1F4E5F),
                    ),
                  ),
                  const SizedBox(height: 16),
                  _buildInfoRow(Icons.calendar_today, 'Duration', 'January 15, 2025 - June 30, 2025'),
                  const SizedBox(height: 12),
                  _buildInfoRow(Icons.location_on, 'Location', 'Main Exhibition Hall, First Floor'),
                  const SizedBox(height: 12),
                  _buildInfoRow(Icons.access_time, 'Viewing Hours', '9:00 AM - 5:30 PM (Last entry at 5:00 PM)'),
                  const SizedBox(height: 24),
                  const Text(
                    'Related Programs',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1F4E5F),
                    ),
                  ),
                  const SizedBox(height: 16),
                  _buildProgramCard(
                    'Guided Tour',
                    'Join our expert guides for an in-depth exploration of the exhibition.',
                    'Every Saturday and Sunday at 11:00 AM and 3:00 PM',
                  ),
                  const SizedBox(height: 12),
                  _buildProgramCard(
                    'Workshop',
                    'Hands-on workshop related to the exhibition theme.',
                    'First Sunday of each month at 2:00 PM',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoRow(IconData icon, String title, String content) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          icon,
          size: 20,
          color: const Color(0xFF8C6E4A),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1F4E5F),
                ),
              ),
              const SizedBox(height: 4),
              Text(
                content,
                style: const TextStyle(
                  fontSize: 14,
                  color: Color(0xFF5A6E72),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildProgramCard(String title, String description, String schedule) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1F4E5F),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              description,
              style: const TextStyle(
                fontSize: 14,
                color: Color(0xFF5A6E72),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              schedule,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Color(0xFF8C6E4A),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
