import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MapImage extends StatelessWidget {
  final String location;
  final String mapUrl;
  final double height;
  
  const MapImage({
    super.key, 
    required this.location,
    required this.mapUrl,
    this.height = 180,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: height,
          width: double.infinity,
          decoration: BoxDecoration(
            color: const Color(0xFF1E1E1E),
            borderRadius: BorderRadius.circular(8),
            image: const DecorationImage(
              image: NetworkImage(
                'https://maps.googleapis.com/maps/api/staticmap?center=3.1412,101.6933&zoom=15&size=600x300&maptype=roadmap&markers=color:red%7C3.1412,101.6933&key=YOUR_API_KEY',
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () async {
                final Uri url = Uri.parse(mapUrl);
                if (!await launchUrl(url)) {
                  if (context.mounted) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Could not launch maps application'),
                      ),
                    );
                  }
                }
              },
              child: Stack(
                children: [
                  // Map interaction hint
                  Center(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.8),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.touch_app, size: 16, color: Color(0xFF1F4E5F)),
                          SizedBox(width: 4),
                          Text(
                            'Tap to open in Maps',
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF1F4E5F),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          location,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.white70,
          ),
        ),
      ],
    );
  }
}
