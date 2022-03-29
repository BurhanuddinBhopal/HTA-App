class CatalogModel {
  // ignore: non_constant_identifier_names
  static final items = [
    Contacts(
      "Shirinath Hardware",
      "Girish Bhai",
      "Shoepur",
      9893005002,
      23 - 03 - 2022,
    )
  ];
}

class Contacts {
  final String id;
  final String name;
  final String city;
  final num mobile;
  final num date;

  Contacts(this.id, this.name, this.city, this.mobile, this.date);
}
