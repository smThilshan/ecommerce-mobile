import 'package:ecommerce_mobile/core/configs/assets/app_vectors.dart';
import 'package:ecommerce_mobile/core/configs/theme/app_colors.dart';
import 'package:ecommerce_mobile/presentation/auth/pages/signin.dart';
import 'package:ecommerce_mobile/presentation/splash/bloc/splash_cubit.dart';
import 'package:ecommerce_mobile/presentation/splash/bloc/splash_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashCubit, SplashState>(
      listener: (context, state) {
        if (state is Unauthenticated) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => SigninPage()),
          );
        }
      },
      child: Scaffold(
        backgroundColor: AppColors.primary,
        body: Center(child: SvgPicture.asset(AppVectors.appLogo)),
      ),
    );
  }
}
