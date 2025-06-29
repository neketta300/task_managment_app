// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

/// generated route for
/// [AccountScreen]
class AccountRoute extends PageRouteInfo<void> {
  const AccountRoute({List<PageRouteInfo>? children})
    : super(AccountRoute.name, initialChildren: children);

  static const String name = 'AccountRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const AccountScreen();
    },
  );
}

/// generated route for
/// [CalendarScreen]
class CalendarRoute extends PageRouteInfo<void> {
  const CalendarRoute({List<PageRouteInfo>? children})
    : super(CalendarRoute.name, initialChildren: children);

  static const String name = 'CalendarRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const CalendarScreen();
    },
  );
}

/// generated route for
/// [DetailDailyTaskScreen]
class DetailDailyTaskRoute extends PageRouteInfo<DetailDailyTaskRouteArgs> {
  DetailDailyTaskRoute({
    Key? key,
    required int taskId,
    List<PageRouteInfo>? children,
  }) : super(
         DetailDailyTaskRoute.name,
         args: DetailDailyTaskRouteArgs(key: key, taskId: taskId),
         initialChildren: children,
       );

  static const String name = 'DetailDailyTaskRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<DetailDailyTaskRouteArgs>();
      return DetailDailyTaskScreen(key: args.key, taskId: args.taskId);
    },
  );
}

class DetailDailyTaskRouteArgs {
  const DetailDailyTaskRouteArgs({this.key, required this.taskId});

  final Key? key;

  final int taskId;

  @override
  String toString() {
    return 'DetailDailyTaskRouteArgs{key: $key, taskId: $taskId}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! DetailDailyTaskRouteArgs) return false;
    return key == other.key && taskId == other.taskId;
  }

  @override
  int get hashCode => key.hashCode ^ taskId.hashCode;
}

/// generated route for
/// [DetailNotificationScreen]
class DetailNotificationRoute
    extends PageRouteInfo<DetailNotificationRouteArgs> {
  DetailNotificationRoute({
    Key? key,
    required int notificationId,
    required String pathToImage,
    required String notificationTitle,
    required String notificationMessage,
    List<PageRouteInfo>? children,
  }) : super(
         DetailNotificationRoute.name,
         args: DetailNotificationRouteArgs(
           key: key,
           notificationId: notificationId,
           pathToImage: pathToImage,
           notificationTitle: notificationTitle,
           notificationMessage: notificationMessage,
         ),
         initialChildren: children,
       );

  static const String name = 'DetailNotificationRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<DetailNotificationRouteArgs>();
      return DetailNotificationScreen(
        key: args.key,
        notificationId: args.notificationId,
        pathToImage: args.pathToImage,
        notificationTitle: args.notificationTitle,
        notificationMessage: args.notificationMessage,
      );
    },
  );
}

class DetailNotificationRouteArgs {
  const DetailNotificationRouteArgs({
    this.key,
    required this.notificationId,
    required this.pathToImage,
    required this.notificationTitle,
    required this.notificationMessage,
  });

  final Key? key;

  final int notificationId;

  final String pathToImage;

  final String notificationTitle;

  final String notificationMessage;

  @override
  String toString() {
    return 'DetailNotificationRouteArgs{key: $key, notificationId: $notificationId, pathToImage: $pathToImage, notificationTitle: $notificationTitle, notificationMessage: $notificationMessage}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! DetailNotificationRouteArgs) return false;
    return key == other.key &&
        notificationId == other.notificationId &&
        pathToImage == other.pathToImage &&
        notificationTitle == other.notificationTitle &&
        notificationMessage == other.notificationMessage;
  }

  @override
  int get hashCode =>
      key.hashCode ^
      notificationId.hashCode ^
      pathToImage.hashCode ^
      notificationTitle.hashCode ^
      notificationMessage.hashCode;
}

/// generated route for
/// [DetailPriorityTaskScreen]
class DetailPriorityTaskRoute
    extends PageRouteInfo<DetailPriorityTaskRouteArgs> {
  DetailPriorityTaskRoute({
    Key? key,
    required int taskId,
    List<PageRouteInfo>? children,
  }) : super(
         DetailPriorityTaskRoute.name,
         args: DetailPriorityTaskRouteArgs(key: key, taskId: taskId),
         initialChildren: children,
       );

  static const String name = 'DetailPriorityTaskRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<DetailPriorityTaskRouteArgs>();
      return DetailPriorityTaskScreen(key: args.key, taskId: args.taskId);
    },
  );
}

class DetailPriorityTaskRouteArgs {
  const DetailPriorityTaskRouteArgs({this.key, required this.taskId});

  final Key? key;

  final int taskId;

  @override
  String toString() {
    return 'DetailPriorityTaskRouteArgs{key: $key, taskId: $taskId}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! DetailPriorityTaskRouteArgs) return false;
    return key == other.key && taskId == other.taskId;
  }

  @override
  int get hashCode => key.hashCode ^ taskId.hashCode;
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const HomeScreen();
    },
  );
}

/// generated route for
/// [LoginScreen]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
    : super(LoginRoute.name, initialChildren: children);

  static const String name = 'LoginRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const LoginScreen();
    },
  );
}

/// generated route for
/// [MainScreen]
class MainRoute extends PageRouteInfo<void> {
  const MainRoute({List<PageRouteInfo>? children})
    : super(MainRoute.name, initialChildren: children);

  static const String name = 'MainRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const MainScreen();
    },
  );
}

/// generated route for
/// [NotificationScreen]
class NotificationRoute extends PageRouteInfo<void> {
  const NotificationRoute({List<PageRouteInfo>? children})
    : super(NotificationRoute.name, initialChildren: children);

  static const String name = 'NotificationRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const NotificationScreen();
    },
  );
}

/// generated route for
/// [OnboardingScreen]
class OnboardingRoute extends PageRouteInfo<void> {
  const OnboardingRoute({List<PageRouteInfo>? children})
    : super(OnboardingRoute.name, initialChildren: children);

  static const String name = 'OnboardingRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const OnboardingScreen();
    },
  );
}

/// generated route for
/// [RegisterScreen]
class RegisterRoute extends PageRouteInfo<void> {
  const RegisterRoute({List<PageRouteInfo>? children})
    : super(RegisterRoute.name, initialChildren: children);

  static const String name = 'RegisterRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const RegisterScreen();
    },
  );
}

/// generated route for
/// [SuccessVerificationScreen]
class SuccessVerificationRoute extends PageRouteInfo<void> {
  const SuccessVerificationRoute({List<PageRouteInfo>? children})
    : super(SuccessVerificationRoute.name, initialChildren: children);

  static const String name = 'SuccessVerificationRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SuccessVerificationScreen();
    },
  );
}

/// generated route for
/// [VerificationCodeScreen]
class VerificationCodeRoute extends PageRouteInfo<void> {
  const VerificationCodeRoute({List<PageRouteInfo>? children})
    : super(VerificationCodeRoute.name, initialChildren: children);

  static const String name = 'VerificationCodeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const VerificationCodeScreen();
    },
  );
}
