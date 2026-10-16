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

  /// `Success`
  String get success {
    return Intl.message(
      'Success',
      name: 'success',
      desc: 'Means some job has been completed as expected',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: 'Button title',
      args: [],
    );
  }

  /// `Error`
  String get error {
    return Intl.message(
      'Error',
      name: 'error',
      desc: 'Alert title. Displayed when an error occurs.',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: 'Settings page title',
      args: [],
    );
  }

  /// `Log out`
  String get logout {
    return Intl.message(
      'Log out',
      name: 'logout',
      desc: 'Button title.',
      args: [],
    );
  }

  /// `Giving up the remote? You'll miss the convenience!`
  String get logoutMessage {
    return Intl.message(
      'Giving up the remote? You\'ll miss the convenience!',
      name: 'logoutMessage',
      desc: 'A lighthearted confirmation message for logging out, reminding the user of the remote control\'s convenience.',
      args: [],
    );
  }

  /// `Delete`
  String get delete {
    return Intl.message(
      'Delete',
      name: 'delete',
      desc: 'Button title for confirming delete actions',
      args: [],
    );
  }

  /// `Delete Account`
  String get deleteAccount {
    return Intl.message(
      'Delete Account',
      name: 'deleteAccount',
      desc: 'Button title. This button allows users to delete the user\'s account.',
      args: [],
    );
  }

  /// `Are you sure you want to delete your account? This action cannot be undone.`
  String get deleteAccountMessage {
    return Intl.message(
      'Are you sure you want to delete your account? This action cannot be undone.',
      name: 'deleteAccountMessage',
      desc: 'Standard warning message for account deletion, emphasizing that the action is permanent and data cannot be recovered.',
      args: [],
    );
  }

  /// `Deleting your account...`
  String get deletingAccount {
    return Intl.message(
      'Deleting your account...',
      name: 'deletingAccount',
      desc: 'A status or loading message shown to the user while the account deletion process is in progress.',
      args: [],
    );
  }

  /// `Sorry, this account has been banned.`
  String get banned {
    return Intl.message(
      'Sorry, this account has been banned.',
      name: 'banned',
      desc: 'Shown when banned account tries to log in.',
      args: [],
    );
  }

  /// `Sorry, something went wrong.`
  String get somethingWrong {
    return Intl.message(
      'Sorry, something went wrong.',
      name: 'somethingWrong',
      desc: 'Displayed when something goes wrong.',
      args: [],
    );
  }

  /// `Sorry, something went wrong. Please try again.`
  String get somethingWrongTryAgain {
    return Intl.message(
      'Sorry, something went wrong. Please try again.',
      name: 'somethingWrongTryAgain',
      desc: 'Shown when error occurred.',
      args: [],
    );
  }

  /// `Control your computer's video without leaving your bed.`
  String get shareContent {
    return Intl.message(
      'Control your computer\'s video without leaving your bed.',
      name: 'shareContent',
      desc: 'Text shared by Tell a friend, between the app name and the store link.',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[Locale.fromSubtags(languageCode: 'en')];
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
