import 'package:plank_me/data/models/user.dart';

abstract class UserRepository {
  void setUserDetails(User user);
  User getUserDetails();
}
