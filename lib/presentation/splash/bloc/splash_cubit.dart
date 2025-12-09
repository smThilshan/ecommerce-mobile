import 'package:ecommerce_mobile/presentation/splash/bloc/splash_state.dart';
import 'package:ecommerce_mobile/presentation/splash/pages/splash.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(DisplaySplash());

  void appStarted() async {
    await Future.delayed(const Duration(seconds: 2));
    emit(Unauthenticated());
  }
}
