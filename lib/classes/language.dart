

class Languages {
  String spa;

  Languages({
    required this.spa,
  });

  factory Languages.fromJson(Map<String, dynamic> json) => Languages(
        spa: json["spa"],
      );

  Map<String, dynamic> toJson() => {
        "spa": spa,
      };
}

class Maps {
  String googleMaps;
  String openStreetMaps;

  Maps({
    required this.googleMaps,
    required this.openStreetMaps,
  });

  factory Maps.fromJson(Map<String, dynamic> json) => Maps(
        googleMaps: json["googleMaps"],
        openStreetMaps: json["openStreetMaps"],
      );

  Map<String, dynamic> toJson() => {
        "googleMaps": googleMaps,
        "openStreetMaps": openStreetMaps,
      };
}
