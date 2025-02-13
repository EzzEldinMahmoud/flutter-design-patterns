import 'package:faker/faker.dart';

import 'entity_base.dart';

class Customer extends EntityBase {
  late String name;
  late String email;

  Customer() {
    name = faker.person.name();
    email = faker.internet.email();
  }

  Customer.fromJson(Map<String, dynamic> json)
      : name = json['name'] as String,
        email = json['email'] as String,
        super.fromJson(json);

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'email': email,
      };
}
