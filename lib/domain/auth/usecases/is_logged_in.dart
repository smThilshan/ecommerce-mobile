import 'package:ecommerce_mobile/core/usecase/usecase.dart';
import 'package:ecommerce_mobile/domain/auth/repository/auth.dart';
import 'package:ecommerce_mobile/service_locator.dart';

class IsLoggedInUseCase implements Usecase<bool, dynamic> {
  @override
  Future<bool> call({params}) async {
    return await sl<AuthRepository>().isLoggedIn();
  }
}
