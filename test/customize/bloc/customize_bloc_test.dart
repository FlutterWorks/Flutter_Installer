import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_installer/customize/bloc/customize_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../mocks/mocks.dart';

void main() {
  late CustomizeBloc customizeBloc;
  late MockFileSystemRepository mockFileSystemRepository;

  setUp(() {
    mockFileSystemRepository = MockFileSystemRepository();
    customizeBloc = CustomizeBloc(
      fileSystemRepository: mockFileSystemRepository,
    );
  });

  tearDown(() {
    verifyNoMoreInteractions(mockFileSystemRepository);
  });

  group("CustomizeBloc |", () {
    blocTest(
      "should emit [] "
      "when nothing is added.",
      build: () => customizeBloc,
      act: (CustomizeBloc bloc) {},
      expect: () => [],
      verify: (CustomizeBloc bloc) {
        verifyZeroInteractions(mockFileSystemRepository);
      },
    );

    group("CustomizeInitializeEvent |", () {
      blocTest(
        "should emit [CustomizeStatus.initialized] "
        "when 'CustomizeInitializeEvent' is added.",
        build: () => customizeBloc,
        act: (CustomizeBloc bloc) {
          bloc.add(const CustomizeInitializeEvent());
        },
        expect: () => [
          const CustomizeState.unknown().copyWith(
            status: CustomizeStatus.initialized,
            isVsCodeSelected: false,
            isGitSelected: true,
            isIntellijIdeaSelected: false,
            isAndroidStudioSelected: false,
          )
        ],
        verify: (CustomizeBloc bloc) {
          verifyZeroInteractions(mockFileSystemRepository);
        },
      );
    });

    group("CustomizeBrowseEvent |", () {
      blocTest(
        "should emit [CustomizeStatus.browseClicked] "
        "with non-null installation path "
        "and null installation path error "
        "when 'CustomizeBrowseEvent' is added "
        "and file system repository returns a non-null path.",
        build: () => customizeBloc,
        act: (CustomizeBloc bloc) {
          when(() => mockFileSystemRepository.getDirectoryPath()).thenAnswer(
            (_) => Future<String?>.value("installationPath"),
          );

          bloc.add(const CustomizeBrowseEvent());
        },
        expect: () => [
          const CustomizeState.unknown().copyWith(
            status: CustomizeStatus.browseClicked,
            installationPath: "installationPath",
            installationPathError: null,
          )
        ],
        verify: (CustomizeBloc bloc) {
          verify(() => mockFileSystemRepository.getDirectoryPath()).called(1);
          verifyNoMoreInteractions(mockFileSystemRepository);
        },
      );

      blocTest(
        "should emit [CustomizeStatus.browseClicked] "
        "with null installation path "
        "and non-null installation path error "
        "when 'CustomizeBrowseEvent' is added "
        "and file system repository returns a null path.",
        build: () => customizeBloc,
        act: (CustomizeBloc bloc) {
          when(() => mockFileSystemRepository.getDirectoryPath()).thenAnswer(
            (_) => Future<String?>.value(null),
          );

          bloc.add(const CustomizeBrowseEvent());
        },
        expect: () => [
          const CustomizeState.unknown().copyWith(
            status: CustomizeStatus.browseClicked,
            installationPath: null,
            installationPathError: "You must choose an installation path!",
          )
        ],
        verify: (CustomizeBloc bloc) {
          verify(() => mockFileSystemRepository.getDirectoryPath()).called(1);
          verifyNoMoreInteractions(mockFileSystemRepository);
        },
      );
    });

    group("CustomizeAppClickedEvent |", () {
      blocTest(
        "should emit [] "
        "when 'CustomizeAppClickedEvent' is added "
        "with nothing provided.",
        build: () => customizeBloc,
        act: (CustomizeBloc bloc) {
          bloc.add(
            const CustomizeAppClickedEvent(),
          );
        },
        expect: () => [],
        verify: (CustomizeBloc bloc) {
          verifyZeroInteractions(mockFileSystemRepository);
        },
      );

      blocTest(
        "should emit [CustomizeStatus.appClicked] "
        "when 'CustomizeAppClickedEvent' is added "
        "with isVsCodeSelected provided.",
        build: () => customizeBloc,
        act: (CustomizeBloc bloc) {
          bloc.add(
            const CustomizeAppClickedEvent(
              isVsCodeSelected: true,
            ),
          );
        },
        expect: () => [
          const CustomizeState.unknown().copyWith(
            status: CustomizeStatus.appClicked,
            isVsCodeSelected: true,
            installationPath: null,
            installationPathError: null,
          ),
        ],
        verify: (CustomizeBloc bloc) {
          verifyZeroInteractions(mockFileSystemRepository);
        },
      );

      blocTest(
        "should emit [CustomizeStatus.appClicked] "
        "when 'CustomizeAppClickedEvent' is added "
        "with isGitSelected provided.",
        build: () => customizeBloc,
        act: (CustomizeBloc bloc) {
          bloc.add(
            const CustomizeAppClickedEvent(
              isGitSelected: true,
            ),
          );
        },
        expect: () => [
          const CustomizeState.unknown().copyWith(
            status: CustomizeStatus.appClicked,
            isGitSelected: true,
            installationPath: null,
            installationPathError: null,
          ),
        ],
        verify: (CustomizeBloc bloc) {
          verifyZeroInteractions(mockFileSystemRepository);
        },
      );

      blocTest(
        "should emit [CustomizeStatus.appClicked] "
        "when 'CustomizeAppClickedEvent' is added "
        "with isIntellijIdeaSelected provided.",
        build: () => customizeBloc,
        act: (CustomizeBloc bloc) {
          bloc.add(
            const CustomizeAppClickedEvent(
              isIntellijIdeaSelected: true,
            ),
          );
        },
        expect: () => [
          const CustomizeState.unknown().copyWith(
            status: CustomizeStatus.appClicked,
            isIntellijIdeaSelected: true,
            installationPath: null,
            installationPathError: null,
          ),
        ],
        verify: (CustomizeBloc bloc) {
          verifyZeroInteractions(mockFileSystemRepository);
        },
      );

      blocTest(
        "should emit [CustomizeStatus.appClicked] "
        "when 'CustomizeAppClickedEvent' is added "
        "with isAndroidStudioSelected provided.",
        build: () => customizeBloc,
        act: (CustomizeBloc bloc) {
          bloc.add(
            const CustomizeAppClickedEvent(
              isAndroidStudioSelected: true,
            ),
          );
        },
        expect: () => [
          const CustomizeState.unknown().copyWith(
            status: CustomizeStatus.appClicked,
            isAndroidStudioSelected: true,
            installationPath: null,
            installationPathError: null,
          ),
        ],
        verify: (CustomizeBloc bloc) {
          verifyZeroInteractions(mockFileSystemRepository);
        },
      );

      blocTest(
        "should emit [CustomizeStatus.appClicked] "
        "when 'CustomizeAppClickedEvent' is added "
        "with isVsCodeSelected, isGitSelected, isIntellijIdeaSelected, "
        "and isAndroidStudioSelected are provided.",
        build: () => customizeBloc,
        act: (CustomizeBloc bloc) {
          bloc.add(
            const CustomizeAppClickedEvent(
              isVsCodeSelected: true,
              isGitSelected: true,
              isIntellijIdeaSelected: true,
              isAndroidStudioSelected: true,
            ),
          );
        },
        expect: () => [
          const CustomizeState.unknown().copyWith(
            status: CustomizeStatus.appClicked,
            isVsCodeSelected: true,
            isGitSelected: true,
            isIntellijIdeaSelected: true,
            isAndroidStudioSelected: true,
            installationPath: null,
            installationPathError: null,
          ),
        ],
        verify: (CustomizeBloc bloc) {
          verifyZeroInteractions(mockFileSystemRepository);
        },
      );
    });
  });
}
