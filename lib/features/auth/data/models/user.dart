import 'package:firebase_auth/firebase_auth.dart';
import 'package:godec/features/auth/data/models/user_entity.dart';

class MyUser {
  String userId;
  String email;
  String name;
  String phoneNumber;

  MyUser({
    required this.userId,
    required this.email,
    required this.name,
    required this.phoneNumber,
  });

  static final empty = MyUser(
    userId: '',
    email: '',
    name: '',
    phoneNumber: '',
  );

  MyUserEntity toEntity() {
    return MyUserEntity(
      userId: userId,
      email: email,
      name: name,
      phoneNumber: phoneNumber,
    );
  }

  static MyUser fromEntity(MyUserEntity entity) {
    return MyUser(
      userId: entity.userId,
      email: entity.email,
      name: entity.name,
      phoneNumber: entity.phoneNumber,
    );
  }

  static MyUser fromFirebaseUser(User user) {
  return MyUser(
    userId: user.uid,
    email: user.email ?? '',
    name: '',
    phoneNumber: '',
  );
}

  @override
  String toString() {
    return 'MyUser: $userId, $email, $name, $phoneNumber';
  }
}
