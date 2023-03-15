import 'dart:typed_data';

class Biography {
  final String name;
  final String page;

  Biography({required this.name,required this.page
  });
}

class BiographyDB {
  final String name;
  final String page;
  final Uint8List image;

  BiographyDB({
    required this.name,
    required this.page,
    required this.image,
  });

  factory BiographyDB.fromData(e) {
    return BiographyDB(
        name: e["name"],
        page: e["page"],
        image: e["image"]);
  }
}