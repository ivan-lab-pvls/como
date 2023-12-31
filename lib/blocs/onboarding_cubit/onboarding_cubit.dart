import 'package:bloc/bloc.dart';

import '../../data/repository/onboarding_repo.dart';
import 'onboarding_state.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  OnboardingCubit(this.onboardingRepository) : super(OnboardingState(true));
  final OnboardingRepository onboardingRepository;

  Future<void> checkFirstTime() async {
    bool isFirstTime = await onboardingRepository.checkFirstTime();
    emit(OnboardingState(isFirstTime));
  }

}
