import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tendance/infrastructure/constants.dart';
import 'package:tendance/domain/services/helper.dart';
import 'package:tendance/presentation/authentication_bloc.dart';
import 'package:tendance/application/screens/onBoarding/onboarding_screen.dart';
import 'package:tendance/application/screens/welcome/welcome_screen.dart';
import 'package:tendance/application/home/home_screen.dart';

class LauncherScreen extends StatefulWidget {
  const LauncherScreen({Key? key}) : super(key: key);

  @override
  State<LauncherScreen> createState() => _LauncherScreenState();
}

class _LauncherScreenState extends State<LauncherScreen> {
  @override
  void initState() {
    super.initState();
    context.read<AuthenticationBloc>().add(CheckFirstRunEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(COLOR_PRIMARY),
      body: BlocListener<AuthenticationBloc, AuthenticationState>(
        listener: (context, state) {
          switch (state.authState) {
            case AuthState.firstRun:
              pushReplacement(context, const OnBoardingScreen());
              break;
            case AuthState.authenticated:
              pushReplacement(context, HomeScreen(user: state.user!));
              break;
            case AuthState.unauthenticated:
              pushReplacement(context, const WelcomeScreen());
              break;
          }
        },
        child: const Center(
          child: CircularProgressIndicator.adaptive(
            backgroundColor: Colors.white,
            valueColor: AlwaysStoppedAnimation(Color(COLOR_PRIMARY)),
          ),
        ),
      ),
    );
  }
}