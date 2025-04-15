class VisitorInfo {
  final String openingHours;
  final Map<String, String> ticketPrices;
  final String location;
  final String mapUrl;
  final String embeddedMapUrl;

  VisitorInfo({
    required this.openingHours,
    required this.ticketPrices,
    required this.location,
    required this.mapUrl,
    required this.embeddedMapUrl,
  });
}
