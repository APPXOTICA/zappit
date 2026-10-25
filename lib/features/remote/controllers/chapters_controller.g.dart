// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chapters_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Chapters of the current video. The extension says how many there are in
/// `state`; the list itself is fetched with `get_tracks` when there are 2+
/// and refetched when the video changes.

@ProviderFor(chapters)
final chaptersProvider = ChaptersProvider._();

/// Chapters of the current video. The extension says how many there are in
/// `state`; the list itself is fetched with `get_tracks` when there are 2+
/// and refetched when the video changes.

final class ChaptersProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Chapter>>,
          List<Chapter>,
          FutureOr<List<Chapter>>
        >
    with $FutureModifier<List<Chapter>>, $FutureProvider<List<Chapter>> {
  /// Chapters of the current video. The extension says how many there are in
  /// `state`; the list itself is fetched with `get_tracks` when there are 2+
  /// and refetched when the video changes.
  ChaptersProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'chaptersProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$chaptersHash();

  @$internal
  @override
  $FutureProviderElement<List<Chapter>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Chapter>> create(Ref ref) {
    return chapters(ref);
  }
}

String _$chaptersHash() => r'fa2f6db7344b6f0028e366e26d5585c637281849';

/// Netflix episodes for the current series; fetched on demand (sheet open,
/// tablet block) and when the episode changes.

@ProviderFor(episodes)
final episodesProvider = EpisodesProvider._();

/// Netflix episodes for the current series; fetched on demand (sheet open,
/// tablet block) and when the episode changes.

final class EpisodesProvider
    extends
        $FunctionalProvider<
          AsyncValue<EpisodeList?>,
          EpisodeList?,
          FutureOr<EpisodeList?>
        >
    with $FutureModifier<EpisodeList?>, $FutureProvider<EpisodeList?> {
  /// Netflix episodes for the current series; fetched on demand (sheet open,
  /// tablet block) and when the episode changes.
  EpisodesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'episodesProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$episodesHash();

  @$internal
  @override
  $FutureProviderElement<EpisodeList?> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<EpisodeList?> create(Ref ref) {
    return episodes(ref);
  }
}

String _$episodesHash() => r'b3698d8b80bae5c501d4a0eb6b9dbbb4180e6c28';

/// Entries of the YouTube playlist being played; fetched on demand (sheet
/// open) and again when the playing entry changes.

@ProviderFor(playlistItems)
final playlistItemsProvider = PlaylistItemsProvider._();

/// Entries of the YouTube playlist being played; fetched on demand (sheet
/// open) and again when the playing entry changes.

final class PlaylistItemsProvider
    extends
        $FunctionalProvider<
          AsyncValue<PlaylistItems?>,
          PlaylistItems?,
          FutureOr<PlaylistItems?>
        >
    with $FutureModifier<PlaylistItems?>, $FutureProvider<PlaylistItems?> {
  /// Entries of the YouTube playlist being played; fetched on demand (sheet
  /// open) and again when the playing entry changes.
  PlaylistItemsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'playlistItemsProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$playlistItemsHash();

  @$internal
  @override
  $FutureProviderElement<PlaylistItems?> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<PlaylistItems?> create(Ref ref) {
    return playlistItems(ref);
  }
}

String _$playlistItemsHash() => r'5144bb9c0e23e71ded2fa3a122156d63a11e5288';
