import 'sealed/login_sealed.dart';

abstract class UserRepository {
  @override
  String login(LoginMedia loginMedia);

  @override
  String register(RegisterMedia registerMedia);
}
