import 'dart:typed_data';

class Subscription {
  final String name;
  final String page;

  Subscription({required this.name,required this.page
  });
}

class SubscriptionDB {
  final String name;
  final String page;
  // final String price;
  final Uint8List image;

  SubscriptionDB({
    required this.name,
    required this.page,
    // required this.price,
    required this.image,
  });

  factory SubscriptionDB.fromData(e) {
    return SubscriptionDB(
        name: e["name"],
        page: e["page"],
        // price: e["price"],
        image: e["image"]);
  }
}






class Animal {
  final String name;
  final String description;
  final String category;

  Animal(
      {required this.name, required this.description, required this.category});
}

class AnimalDB {
  final String name;
  final String description;
  final String category;
  final Uint8List image;

  AnimalDB({
    required this.name,
    required this.description,
    required this.category,
    required this.image,
  });

  factory AnimalDB.fromData(Map data) {
    return AnimalDB(
        name: data["name"],
        description: data["description"],
        category: data["category"],
        image: data["image"]);
  }
}
