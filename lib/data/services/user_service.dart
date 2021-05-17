import 'package:hive/hive.dart';
import 'package:plank_me/core/exceptions/user_exception.dart';
import 'package:plank_me/data/models/user.dart';
import 'package:plank_me/data/services/local_storage_service.dart';
import 'package:plank_me/repositories/user_repository.dart';

class UserService implements UserRepository {
  Box localUser = Hive.box(StorageKeys.userDetails);

  User? user;

  @override
  User getUserDetails() {
    try {
      user ??= User(
          gender: localUser.get('gender') as String,
          name: localUser.get('name') as String);
      return user!;
    } catch (e) {
      throw NoUserException();
    }
  }

  @override
  void setUserDetails(User user) {
    localUser.put('name', user.name);
    localUser.put('gender', user.gender);

    print('${getUserDetails().name} from hive database');
  }
}
