import 'package:data/data_graph/user/user_repository.dart';

import 'sealed/login_sealed.dart';

class UserModule implements UserRepository {
  final CloudDataSource cloudDataSource;
  final FirebaseDataSource firebaseDataSource;
  UserModule({
    required this.cloudDataSource,
    required this.firebaseDataSource,
  });

  @override
  String login(LoginMedia loginMedia) {
    return loginMedia.when(
      byCloudDataSource: (value) => cloudDataSource.login(value),
      byFirebaseDataSource: (value) => firebaseDataSource.login(value),
    );
  }

  @override
  String register(RegisterMedia registerMedia) {
    return registerMedia.when(
      byCloudDataSource: (value) => cloudDataSource.register(value),
      byFirebaseDataSource: (value) => firebaseDataSource.register(value),
    );
  }
}
