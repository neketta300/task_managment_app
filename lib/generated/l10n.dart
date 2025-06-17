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
      'The advantage of this application is that\nit also provides reminders for you\nso you don\'t forget to keep doing your\nassignments well and according to the\ntime you have set',
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

  /// `Login`
  String get login {
    return Intl.message('Login', name: 'login', desc: '', args: []);
  }

  /// `Password`
  String get password {
    return Intl.message('Password', name: 'password', desc: '', args: []);
  }

  /// `Email`
  String get email {
    return Intl.message('Email', name: 'email', desc: '', args: []);
  }

  /// `Confirm Password`
  String get confirmPassword {
    return Intl.message(
      'Confirm Password',
      name: 'confirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `Create your account`
  String get createYourAccount {
    return Intl.message(
      'Create your account',
      name: 'createYourAccount',
      desc: '',
      args: [],
    );
  }

  /// `Username`
  String get username {
    return Intl.message('Username', name: 'username', desc: '', args: []);
  }

  /// `Register`
  String get register {
    return Intl.message('Register', name: 'register', desc: '', args: []);
  }

  /// `Or Register with`
  String get orRegisterWith {
    return Intl.message(
      'Or Register with',
      name: 'orRegisterWith',
      desc: '',
      args: [],
    );
  }

  /// `Verify Account`
  String get verifyAccount {
    return Intl.message(
      'Verify Account',
      name: 'verifyAccount',
      desc: '',
      args: [],
    );
  }

  /// `Please enter the verification number\nwe send to your email`
  String get pleaseEnterTheVerificationNumber {
    return Intl.message(
      'Please enter the verification number\nwe send to your email',
      name: 'pleaseEnterTheVerificationNumber',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get confirm {
    return Intl.message('Confirm', name: 'confirm', desc: '', args: []);
  }

  /// `Don’t receive a code? `
  String get dontReceiveACode {
    return Intl.message(
      'Don’t receive a code? ',
      name: 'dontReceiveACode',
      desc: '',
      args: [],
    );
  }

  /// `Resend`
  String get resend {
    return Intl.message('Resend', name: 'resend', desc: '', args: []);
  }

  /// `Your Account has been\nVerified Successfully!`
  String get yourAccountHasBeennverifiedSuccessfully {
    return Intl.message(
      'Your Account has been\nVerified Successfully!',
      name: 'yourAccountHasBeennverifiedSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Go to Dashboard`
  String get goToDashboard {
    return Intl.message(
      'Go to Dashboard',
      name: 'goToDashboard',
      desc: '',
      args: [],
    );
  }

  /// `Have a nice day!`
  String get haveANiceDay {
    return Intl.message(
      'Have a nice day!',
      name: 'haveANiceDay',
      desc: '',
      args: [],
    );
  }

  /// `Progress`
  String get progress {
    return Intl.message('Progress', name: 'progress', desc: '', args: []);
  }

  /// `My Priority Task`
  String get myPriorityTask {
    return Intl.message(
      'My Priority Task',
      name: 'myPriorityTask',
      desc: '',
      args: [],
    );
  }

  /// `Daily Task`
  String get dailyTask {
    return Intl.message('Daily Task', name: 'dailyTask', desc: '', args: []);
  }

  /// `Description`
  String get description {
    return Intl.message('Description', name: 'description', desc: '', args: []);
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
