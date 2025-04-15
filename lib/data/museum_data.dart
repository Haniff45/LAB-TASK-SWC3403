import '../models/exhibition.dart';
import '../models/gallery_item.dart';
import '../models/visitor_info.dart';

class MuseumData {
  static List<Exhibition> getExhibitions() {
    return [
      Exhibition(
        id: '1',
        title: 'Islamic Calligraphy Through Ages',
        description: 'Explore the evolution of Islamic calligraphy from the 7th century to modern times.',
        imageUrl: 'assets/images/calligraphy.jpg',
        detailedDescription:
            'This exhibition showcases the beautiful art of Islamic calligraphy, featuring rare manuscripts and calligraphic works from various periods and regions of the Islamic world. Visitors can witness the evolution of different calligraphic styles such as Kufic, Naskh, Thuluth, and Diwani. The exhibition also highlights the significance of calligraphy in Islamic culture and its influence on architecture, textiles, and other decorative arts.',
      ),
      Exhibition(
        id: '2',
        title: 'Islamic Architecture Wonders',
        description: 'Discover the magnificent architectural heritage of the Islamic world.',
        imageUrl: 'assets/images/architecture.jpg',
        detailedDescription:
            'This exhibition presents models, photographs, and digital reconstructions of iconic Islamic architectural masterpieces from around the world. From the Great Mosque of Cordoba to the Taj Mahal, visitors can learn about the distinctive features of Islamic architecture, including geometric patterns, arabesques, and muqarnas. The exhibition also explores the historical and cultural contexts in which these architectural wonders were created and their lasting impact on global architectural traditions.',
      ),
      Exhibition(
        id: '3',
        title: 'Islamic Science and Innovation',
        description: 'Learn about the contributions of Islamic scholars to science and technology.',
        imageUrl: 'assets/images/science.jpg',
        detailedDescription:
            'This exhibition highlights the golden age of Islamic science (8th to 14th centuries) and the significant contributions made by Muslim scholars in fields such as astronomy, mathematics, medicine, and engineering. Visitors can see replicas of scientific instruments like astrolabes and quadrants, as well as manuscripts of important scientific works. The exhibition also explores how knowledge from the Islamic world was transmitted to Europe and influenced the Renaissance and the Scientific Revolution.',
      ),
    ];
  }

  static List<GalleryItem> getGalleryItems() {
    return [
      GalleryItem(
        id: '1',
        imageUrl: 'assets/images/artifact1.jpg',
        title: 'Ceramic Bowl with Arabic Inscription',
        description: '10th century ceramic bowl with Kufic script, from Nishapur, Iran.',
      ),
      GalleryItem(
        id: '2',
        imageUrl: 'assets/images/artifact2.jpg',
        title: 'Illuminated Quran Page',
        description: '16th century Quran page with gold illumination, Ottoman period.',
      ),
      GalleryItem(
        id: '3',
        imageUrl: 'assets/images/artifact3.jpg',
        title: 'Brass Astrolabe',
        description: '14th century astrolabe used for astronomical calculations, from Andalusia.',
      ),
      GalleryItem(
        id: '4',
        imageUrl: 'assets/images/artifact4.jpg',
        title: 'Iznik Pottery',
        description: 'Ottoman Iznik pottery featuring tulip and carnation motifs, 16th century.',
      ),
      GalleryItem(
        id: '5',
        imageUrl: 'assets/images/artifact5.jpg',
        title: 'Mughal Miniature Painting',
        description: '17th century miniature painting depicting court scene from Mughal India.',
      ),
      GalleryItem(
        id: '6',
        imageUrl: 'assets/images/artifact6.jpg',
        title: 'Persian Carpet',
        description: 'Intricately designed Persian carpet with floral patterns, 18th century.',
      ),
    ];
  }

  static VisitorInfo getVisitorInfo() {
    return VisitorInfo(
      openingHours: 'Tuesday to Sunday: 9:00 AM - 6:00 PM\nClosed on Mondays and public holidays',
      ticketPrices: {
        'Adults': 'RM 14.00',
        'Senior Citizens (60 years and above)': 'RM 7.00',
        'Students (with valid ID)': 'RM 7.00',
        'Children (6-12 years)': 'RM 5.00',
        'Children (below 6 years)': 'Free',
      },
      location: 'Jalan Lembah Perdana, 50480 Kuala Lumpur, Malaysia',
      mapUrl: 'https://maps.google.com/?q=3.1412,101.6933',
      embeddedMapUrl: 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3983.8212552332106!2d101.68742427491023!3d3.1418457968335884!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31cc49c9aaaaaaab%3A0x7ce57e40cb75b58b!2sIslamic%20Arts%20Museum%20Malaysia!5e0!3m2!1sen!2smy!4v1742574185010!5m2!1sen!2smy',
    );
  }
}
