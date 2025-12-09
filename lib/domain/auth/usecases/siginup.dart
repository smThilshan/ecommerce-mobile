import 'package:dartz/dartz.dart';
import 'package:ecommerce_mobile/core/usecase/usecase.dart';
import 'package:ecommerce_mobile/data/auth/models/user_creation_req.dart';
import 'package:ecommerce_mobile/domain/auth/repository/auth.dart';
import 'package:ecommerce_mobile/service_locator.dart';

class SignupUseCase implements Usecase<Either, UserCreationReq> {
  @override
  Future<Either> call({UserCreationReq? params}) async {
    return await sl<AuthRepository>().signup(params!);
  }
}
