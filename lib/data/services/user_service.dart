import 'package:hive/hive.dart';
import 'package:plank_me/data/models/user.dart';
import 'package:plank_me/repositories/user_repository.dart';
import 'package:hive_flutter/hive_flutter.dart';

class UserService implements UserRepository {
  Box localUser = Hive.box('userDetails');

  User? user;

  @override
  User getUserDetails() {
    user ??= User(
        gender: localUser.get('gender') as String,
        name: localUser.get('name') as String);
    return user!;
  }

  @override
  void setUserDetails(User user) {
    localUser.put('name', user.name);
    localUser.put('gender', user.gender);

    print('${getUserDetails().name} from hive database');
  }
}
