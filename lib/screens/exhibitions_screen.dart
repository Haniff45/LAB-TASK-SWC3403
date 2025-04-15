import 'package:flutter/material.dart';
import '../data/museum_data.dart';
import '../models/exhibition.dart';

class ExhibitionsScreen extends StatelessWidget {
  const ExhibitionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final exhibitions = MuseumData.getExhibitions();
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exhibitions'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: exhibitions.length,
        itemBuilder: (context, index) {
          return _buildExhibitionCard(context, exhibitions[index]);
        },
      ),
    );
  }

  Widget _buildExhibitionCard(BuildContext context, Exhibition exhibition) {
    return Card(
      margin: const EdgeInsets.only(bottom: 20),
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(
            context, 
            '/exhibition-details',
            arguments: exhibition,
          );
        },
        borderRadius: BorderRadius.circular(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
              child: Image.asset(
                exhibition.imageUrl,
                height: 180,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    exhibition.title,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF90CAF9),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    exhibition.description,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.white70,
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextButton.icon(
                    onPressed: () {
                      Navigator.pushNamed(
                        context, 
                        '/exhibition-details',
                        arguments: exhibition,
                      );
                    },
                    icon: const Icon(Icons.arrow_forward),
                    label: const Text('Learn More'),
                    style: TextButton.styleFrom(
                      foregroundColor: Color(0xFF90CAF9),
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
