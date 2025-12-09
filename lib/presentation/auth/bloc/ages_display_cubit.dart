import 'package:ecommerce_mobile/presentation/auth/bloc/ages_display_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AgesDisplayCubit extends Cubit<AgesDisplayStates> {
  AgesDisplayCubit() : super(AgesLoading());
}
