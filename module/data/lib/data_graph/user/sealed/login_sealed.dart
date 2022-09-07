import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../models/request/user.dart';
part 'login_sealed.freezed.dart';

@freezed
class LoginMedia with _$LoginMedia {
  const factory LoginMedia.byCloudDataSource(User user) = _ByCloudDataSource;
  const factory LoginMedia.byFirebaseDataSource(User user) =
      _ByFirebaseDataSource;
}
