import 'package:zappit/core/barrel_files/localization.dart';
import 'package:zappit/protocol/protocol.dart';

/// [Site.displayName] for the screen: brand names stay as they are; "Web"
/// (any other site) is translated.
extension SiteLabel on Site {
  String label(S s) => this == Site.generic ? s.siteWeb : displayName;
}
