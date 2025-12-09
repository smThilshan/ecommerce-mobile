import 'package:dartz/dartz.dart';
import 'package:ecommerce_mobile/core/usecase/usecase.dart';
import 'package:ecommerce_mobile/data/auth/models/user_signin_req.dart';
import 'package:ecommerce_mobile/domain/auth/repository/auth.dart';
import 'package:ecommerce_mobile/service_locator.dart';

class SigninUseCase implements Usecase<Either, UserSigninReq> {
  @override
  Future<Either> call({UserSigninReq? params}) async {
    return sl<AuthRepository>().signin(params!);
  }
}
