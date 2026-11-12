import 'package:zappit/core/barrel_files/riverpod_core.dart';
import 'package:zappit/core/firebase/user_settings_repository.dart';
import 'package:zappit/features/remote/controllers/remote_controller.dart';
import 'package:zappit/protocol/protocol.dart';

/// The page a supported site opens on.
extension SiteHome on Site {
  String? get homeUrl => switch (this) {
        Site.youtube => 'https://www.youtube.com/',
        Site.shorts => 'https://www.youtube.com/shorts/',
        Site.netflix => 'https://www.netflix.com/',
        Site.tiktok => 'https://www.tiktok.com/',
        Site.reels => 'https://www.instagram.com/reels/',
        Site.generic || Site.none => null,
      };
}

/// The user's favorite sites in their order (Firestore `users/{uid}.settings.favoriteSites`).
List<Site> watchFavoriteSites(WidgetRef ref) => ref.watch(userSettingsControllerProvider.select((s) => s.favoriteSites));

/// Opens the site's home in a new tab of the selected browser.
void openSiteHome(WidgetRef ref, Site site) {
  final url = site.homeUrl;
  if (url != null) ref.read(remoteControllerProvider).openUrl(url);
}
