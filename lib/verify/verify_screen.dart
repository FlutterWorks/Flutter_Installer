import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_installer/core/fi_constants.dart';
import 'package:flutter_installer/core/router/fi_router.dart';
import 'package:flutter_installer/core/widgets/fi_back_next_buttons.dart';
import 'package:flutter_installer/verify/widgets/verify_item.dart';
import 'package:provider/provider.dart';

@RoutePage()
class VerifyScreen extends StatelessWidget {
  const VerifyScreen({
    super.key,
    required this.installationPath,
    required this.isVsCodeSelected,
    required this.isGitSelected,
    required this.isIntellijIdeaSelected,
    required this.isAndroidStudioSelected,
  });

  final String installationPath;
  final bool isVsCodeSelected;
  final bool isGitSelected;
  final bool isIntellijIdeaSelected;
  final bool isAndroidStudioSelected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(FiConstants.unit),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Verify",
                  style: Theme.of(context).textTheme.displaySmall,
                ),
              ],
            ),
            const SizedBox(height: FiConstants.unit),
            Text(
              "🔵 This is a summary of what will be downloaded & installed:",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            VerifyItem(
              text: "Path: $installationPath",
            ),
            if (isVsCodeSelected)
              const VerifyItem(
                text: "Visual Studio Code",
              ),
            if (isGitSelected)
              const VerifyItem(
                text: "Git",
              ),
            if (isIntellijIdeaSelected)
              const VerifyItem(
                text: "IntelliJ IDEA",
              ),
            if (isAndroidStudioSelected)
              const VerifyItem(
                text: "Android Studio",
              ),
            const Spacer(),
            FIBackNextButtons(
              onBackPressed: () async {
                await context.read<FIRouter>().maybePop();
              },
              onNextPressed: () async {
                // TODO(yazeedalkhalaf): navigate to install route.
                // await context.read<FIRouter>().push(
                //       const InstallRoute(),
                //     );
              },
            )
          ],
        ),
      ),
    );
  }
}
