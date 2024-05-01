// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'fi_router.dart';

abstract class _$FIRouter extends RootStackRouter {
  // ignore: unused_element
  _$FIRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    CustomizeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CustomizeScreen(),
      );
    },
    FaqRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const FaqScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
      );
    },
    VerifyRoute.name: (routeData) {
      final args = routeData.argsAs<VerifyRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: VerifyScreen(
          key: args.key,
          installationPath: args.installationPath,
          isVsCodeSelected: args.isVsCodeSelected,
          isGitSelected: args.isGitSelected,
          isIntellijIdeaSelected: args.isIntellijIdeaSelected,
          isAndroidStudioSelected: args.isAndroidStudioSelected,
        ),
      );
    },
  };
}

/// generated route for
/// [CustomizeScreen]
class CustomizeRoute extends PageRouteInfo<void> {
  const CustomizeRoute({List<PageRouteInfo>? children})
      : super(
          CustomizeRoute.name,
          initialChildren: children,
        );

  static const String name = 'CustomizeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [FaqScreen]
class FaqRoute extends PageRouteInfo<void> {
  const FaqRoute({List<PageRouteInfo>? children})
      : super(
          FaqRoute.name,
          initialChildren: children,
        );

  static const String name = 'FaqRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [VerifyScreen]
class VerifyRoute extends PageRouteInfo<VerifyRouteArgs> {
  VerifyRoute({
    Key? key,
    required String installationPath,
    required bool isVsCodeSelected,
    required bool isGitSelected,
    required bool isIntellijIdeaSelected,
    required bool isAndroidStudioSelected,
    List<PageRouteInfo>? children,
  }) : super(
          VerifyRoute.name,
          args: VerifyRouteArgs(
            key: key,
            installationPath: installationPath,
            isVsCodeSelected: isVsCodeSelected,
            isGitSelected: isGitSelected,
            isIntellijIdeaSelected: isIntellijIdeaSelected,
            isAndroidStudioSelected: isAndroidStudioSelected,
          ),
          initialChildren: children,
        );

  static const String name = 'VerifyRoute';

  static const PageInfo<VerifyRouteArgs> page = PageInfo<VerifyRouteArgs>(name);
}

class VerifyRouteArgs {
  const VerifyRouteArgs({
    this.key,
    required this.installationPath,
    required this.isVsCodeSelected,
    required this.isGitSelected,
    required this.isIntellijIdeaSelected,
    required this.isAndroidStudioSelected,
  });

  final Key? key;

  final String installationPath;

  final bool isVsCodeSelected;

  final bool isGitSelected;

  final bool isIntellijIdeaSelected;

  final bool isAndroidStudioSelected;

  @override
  String toString() {
    return 'VerifyRouteArgs{key: $key, installationPath: $installationPath, isVsCodeSelected: $isVsCodeSelected, isGitSelected: $isGitSelected, isIntellijIdeaSelected: $isIntellijIdeaSelected, isAndroidStudioSelected: $isAndroidStudioSelected}';
  }
}
