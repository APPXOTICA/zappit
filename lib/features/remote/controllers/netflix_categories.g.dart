// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'netflix_categories.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(netflixCategories)
final netflixCategoriesProvider = NetflixCategoriesProvider._();

final class NetflixCategoriesProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<NetflixCategoryGroup>>,
          List<NetflixCategoryGroup>,
          FutureOr<List<NetflixCategoryGroup>>
        >
    with
        $FutureModifier<List<NetflixCategoryGroup>>,
        $FutureProvider<List<NetflixCategoryGroup>> {
  NetflixCategoriesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'netflixCategoriesProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$netflixCategoriesHash();

  @$internal
  @override
  $FutureProviderElement<List<NetflixCategoryGroup>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<NetflixCategoryGroup>> create(Ref ref) {
    return netflixCategories(ref);
  }
}

String _$netflixCategoriesHash() => r'a3f3b400ce260df783e592d4f397ecd51748ae62';
