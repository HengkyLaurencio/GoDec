class MyUserEntity {
  String userId;
  String email;
  String name;
  String phoneNumber;

  MyUserEntity({
    required this.userId,
    required this.email,
    required this.name,
    required this.phoneNumber,
  });

  Map<String, Object?> toDocument() {
    return {
      'userId': userId,
      'email': email,
      'name': name,
      'phoneNumber': phoneNumber,
    };
  }

  static MyUserEntity fromDocument(Map<String,dynamic> doc) {
    return MyUserEntity(
      userId: doc['userId'] ?? '',
      email: doc['email'] ?? '',
      name: doc['name'] ?? '',
      phoneNumber: doc['phoneNumber'] ?? '',
    );
  }
}
