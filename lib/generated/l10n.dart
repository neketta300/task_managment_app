// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Easy Time Management`
  String get easyTimeManagement {
    return Intl.message(
      'Easy Time Management',
      name: 'easyTimeManagement',
      desc: '',
      args: [],
    );
  }

  /// `With management based on priority and\ndaily tasks, it will give you convenience in\nmanaging and determining the tasks that\nmust be done first`
  String get withManagementBasedOnPriority {
    return Intl.message(
      'With management based on priority and\ndaily tasks, it will give you convenience in\nmanaging and determining the tasks that\nmust be done first',
      name: 'withManagementBasedOnPriority',
      desc: '',
      args: [],
    );
  }

  /// `Increase Work Effectiveness`
  String get increaseWorkEffectiveness {
    return Intl.message(
      'Increase Work Effectiveness',
      name: 'increaseWorkEffectiveness',
      desc: '',
      args: [],
    );
  }

  /// `Time management and the determination\nof more important tasks will give your job\nstatistics better and always improve`
  String get timeManagement {
    return Intl.message(
      'Time management and the determination\nof more important tasks will give your job\nstatistics better and always improve',
      name: 'timeManagement',
      desc: '',
      args: [],
    );
  }

  /// `Reminder Notification`
  String get reminderNotification {
    return Intl.message(
      'Reminder Notification',
      name: 'reminderNotification',
      desc: '',
      args: [],
    );
  }

  /// `The advantage of this application is that\nit also provides reminders for you\nso you don't forget to keep doing your\nassignments well and according to the\ntime you have set`
  String get theAdvantageOfThisApplicationIs {
    return Intl.message(
      'The advantage of this application is that\\nit also provides reminders for you\nso you don\'t forget to keep doing your\nassignments well and according to the\ntime you have set',
      name: 'theAdvantageOfThisApplicationIs',
      desc: '',
      args: [],
    );
  }

  /// `Get Started`
  String get getStarted {
    return Intl.message('Get Started', name: 'getStarted', desc: '', args: []);
  }

  /// `skip`
  String get skip {
    return Intl.message('skip', name: 'skip', desc: '', args: []);
  }

  /// `Next`
  String get next {
    return Intl.message('Next', name: 'next', desc: '', args: []);
  }

  /// `Management  App`
  String get managementApp {
    return Intl.message(
      'Management  App',
      name: 'managementApp',
      desc: '',
      args: [],
    );
  }

  /// `Login to your account`
  String get loginToYourAccount {
    return Intl.message(
      'Login to your account',
      name: 'loginToYourAccount',
      desc: '',
      args: [],
    );
  }

  /// `Forgot password?`
  String get forgotPassword {
    return Intl.message(
      'Forgot password?',
      name: 'forgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Or Login with`
  String get orLoginWith {
    return Intl.message(
      'Or Login with',
      name: 'orLoginWith',
      desc: '',
      args: [],
    );
  }

  /// `Don’t have an account?`
  String get dontHaveAnAccount {
    return Intl.message(
      'Don’t have an account?',
      name: 'dontHaveAnAccount',
      desc: '',
      args: [],
    );
  }

  /// ` Sign Up`
  String get signUp {
    return Intl.message(' Sign Up', name: 'signUp', desc: '', args: []);
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ru'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
