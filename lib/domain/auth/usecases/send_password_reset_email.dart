import 'package:dartz/dartz.dart';
import 'package:ecommerce_mobile/core/usecase/usecase.dart';
import 'package:ecommerce_mobile/domain/auth/repository/auth.dart';
import 'package:ecommerce_mobile/service_locator.dart';

class SendPasswordResetEmailUseCase implements Usecase<Either, String> {
  @override
  Future<Either> call({String? params}) async {
    return sl<AuthRepository>().sendPasswordResetEmail(params!);
  }
}
