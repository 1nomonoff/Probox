class UserModel {
  final int id;
  final String name;
  final String username;
  final String email;
  final AddressModel address;
  final String phone;
  final String website;
  final CompanyModel company;

  UserModel(
      {required this.id,
      required this.name,
      required this.username,
      required this.email,
      required this.address,
      required this.phone,
      required this.website,
      required this.company});

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
      id: json['id'],
      name: json['name'],
      username: json['username'],
      email: json['email'],
      address: AddressModel.fromJson(json['address']),
      phone: json['phone'],
      website: json['website'],
      company: CompanyModel.fromJson(json['company']));
}

class AddressModel {
  final String street;
  final String suite;
  final String city;
  final String zipCode;
  final GeoModel geo;

  AddressModel(
      {required this.street,
      required this.suite,
      required this.city,
      required this.zipCode,
      required this.geo});

  factory AddressModel.fromJson(Map<String, dynamic> json) => AddressModel(
      street: json['street'],
      suite: json['suite'],
      city: json['city'],
      zipCode: json['zipMode'],
      geo: GeoModel.fromJson(json['geo']));
}

class GeoModel {
  final String lat;
  final String long;

  GeoModel({required this.lat, required this.long});

  factory GeoModel.fromJson(Map<String, dynamic> json) =>
      GeoModel(lat: json['lat'], long: json['long']);
}

class CompanyModel {
  final String name;
  final String catchPhrase;
  final String bs;

  CompanyModel({
    required this.name,
    required this.catchPhrase,
    required this.bs,
  });

  factory CompanyModel.fromJson(Map<String, dynamic> json) => CompanyModel(
        name: json['name'],
        catchPhrase: json['catchPhrase'],
        bs: json['bs'],
      );
}
