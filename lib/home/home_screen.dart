import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_installer/core/fi_constants.dart';
import 'package:flutter_installer/core/router/fi_router.dart';
import 'package:provider/provider.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static Key flutterLogoKey = UniqueKey();
  static Key flutterInstallerLogoKey = UniqueKey();
  static Key faqButtonKey = UniqueKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Align(
            alignment: Alignment.centerLeft,
            child: Opacity(
              opacity: 0.15,
              child: Image.asset(
                'assets/images/logo_flutter_1080px_clr.png',
                key: HomeScreen.flutterLogoKey,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Spacer(),
              Image.asset(
                'assets/images/flutter_installer_logo.png',
                width: 100,
                key: HomeScreen.flutterInstallerLogoKey,
              ),
              Text(
                "Flutter Installer",
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: FiConstants.unit),
              FilledButton(
                onPressed: () async {
                  await context.read<FIRouter>().push(
                        const CustomizeRoute(),
                      );
                },
                child: const Text("Get Started"),
              ),
              const SizedBox(height: FiConstants.unit),
              OutlinedButton.icon(
                key: faqButtonKey,
                onPressed: () async {
                  await context.read<FIRouter>().push(const FaqRoute());
                },
                icon: const Icon(Icons.help_outline_rounded),
                label: const Text("FAQ"),
              ),
              const Spacer(),
              Text(
                "Made using Flutter 💙",
                style: Theme.of(context).textTheme.titleSmall,
                textAlign: TextAlign.center,
              ),
              Text(
                "Flutter and the related logo are trademarks of Google LLC.\nWe are not endorsed by or affiliated with Google LLC.",
                style: Theme.of(context).textTheme.bodySmall,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: FiConstants.unit),
            ],
          ),
        ],
      ),
    );
  }
}
