import 'package:dartz/dartz.dart';
import 'package:ecommerce_mobile/core/usecase/usecase.dart';
import 'package:ecommerce_mobile/domain/auth/repository/auth.dart';
import 'package:ecommerce_mobile/service_locator.dart';

class GetAgesUseCase implements Usecase<Either, dynamic> {
  @override
  Future<Either> call({dynamic params}) async {
    return await sl<AuthRepository>().getAges();
  }
}
