// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "banned": MessageLookupByLibrary.simpleMessage(
      "Sorry, this account has been banned.",
    ),
    "cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
    "delete": MessageLookupByLibrary.simpleMessage("Delete"),
    "deleteAccount": MessageLookupByLibrary.simpleMessage("Delete Account"),
    "deleteAccountMessage": MessageLookupByLibrary.simpleMessage(
      "Are you sure you want to delete your account? This action cannot be undone.",
    ),
    "deletingAccount": MessageLookupByLibrary.simpleMessage(
      "Deleting your account...",
    ),
    "error": MessageLookupByLibrary.simpleMessage("Error"),
    "logout": MessageLookupByLibrary.simpleMessage("Log out"),
    "logoutMessage": MessageLookupByLibrary.simpleMessage(
      "Giving up the remote? You\'ll miss the convenience!",
    ),
    "settings": MessageLookupByLibrary.simpleMessage("Settings"),
    "shareContent": MessageLookupByLibrary.simpleMessage(
      "Control your computer\'s video without leaving your bed.",
    ),
    "somethingWrong": MessageLookupByLibrary.simpleMessage(
      "Sorry, something went wrong.",
    ),
    "somethingWrongTryAgain": MessageLookupByLibrary.simpleMessage(
      "Sorry, something went wrong. Please try again.",
    ),
    "success": MessageLookupByLibrary.simpleMessage("Success"),
  };
}
