import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../resources/assets.dart';
import '../utils/colors/materialcolors.dart';
import 'users/auth.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();
    openpage();
  }

  openpage() async {
    Timer(const Duration(seconds: 3), () async {
      Navigator.of(context).pushReplacement(
        PageRouteBuilder(
          transitionDuration: const Duration(seconds: 2),
          pageBuilder: (context, animation, secondaryAnimation) =>
              const Login(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // const SystemUiOverlayStyle(
    //   statusBarColor: Colors.transparent,
    //   statusBarIconBrightness: Brightness.light,
    //   systemNavigationBarColor: Colors.deepOrange,
    //   // systemNavigationBarIconBrightness: Brightness.dark,
    // );
    SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarColor: MaterialColors.primaryColor[500]!,
      // systemNavigationBarIconBrightness: Brightness.dark,
    );

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Positioned(
          //   top: MediaQuery.of(context).size.width * 0.2 / 1,
          //   left: MediaQuery.of(context).size.width * 0.34 / 1,
          //   child: GlithEffect(
          //     child: SizedBox(
          //       width: MediaQuery.of(context).size.width * 0.35 / 1,
          //       child: Image.asset(
          //         'assets/icons/appIcon.png',
          //         fit: BoxFit.contain,
          //       ),
          //     ),
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Transform.scale(
              scale: 1.2,
              child: Image.asset(
                Assets.splashimage,
                fit: BoxFit.cover,
              ),
            ),
            // child: Transform.scale(
            //     scale: 1.5,
            //     child: Lottie.asset(ResourcesLottie.salelefttoright)),
          ),
          // Padding(
          //   padding: const EdgeInsets.all(20.0),
          //   child: Transform.scale(
          //       scale: 1.5,
          //       child: Lottie.asset(ResourcesLottie.cartmovelefttoright)),
          // ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Colors.white.withOpacity(0.9),
                  MaterialColors.primaryColor[300]!.withOpacity(0.2),
                  MaterialColors.primaryColor[600]!.withOpacity(0.2),
                  // MaterialColors.primaryColor[900]!,
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 30,
            left: MediaQuery.of(context).size.width * 0.31 / 1,
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Transform.scale(
                    scale: 1.2,
                    child: Text(
                      'Shippers',
                      style:
                          Theme.of(context).textTheme.headlineLarge!.copyWith(
                                fontWeight: FontWeight.bold,
                                color: MaterialColors.primaryColor[400],
                              ),
                    )
                        .animate(
                          delay: 500.ms,
                          onPlay: (controller) => controller.repeat(),
                        )
                        .slideY(duration: const Duration(milliseconds: 800))
                        .scaleXY()
                        .shimmer(
                            duration: const Duration(seconds: 2),
                            delay: const Duration(milliseconds: 1000))
                        .shimmer(
                          duration: const Duration(seconds: 2),
                          curve: Curves.easeInOut,
                        ),
                  ),
                  const SizedBox(height: 21),
                  Text(
                    'Powerd by Cargo',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
