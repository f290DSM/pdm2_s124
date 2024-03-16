// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$productRepositoryHash() => r'909a333ffdd1172af2b7aab044ad86e7818c022b';

/// See also [productRepository].
@ProviderFor(productRepository)
final productRepositoryProvider =
    AutoDisposeProvider<ProductRepositoryImpl>.internal(
  productRepository,
  name: r'productRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$productRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ProductRepositoryRef = AutoDisposeProviderRef<ProductRepositoryImpl>;
String _$productByCategoryHash() => r'44962a776f3efe2bcd7c8bcbe9ac4750f3dade27';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [productByCategory].
@ProviderFor(productByCategory)
const productByCategoryProvider = ProductByCategoryFamily();

/// See also [productByCategory].
class ProductByCategoryFamily extends Family<AsyncValue<List<Product>>> {
  /// See also [productByCategory].
  const ProductByCategoryFamily();

  /// See also [productByCategory].
  ProductByCategoryProvider call(
    String category,
  ) {
    return ProductByCategoryProvider(
      category,
    );
  }

  @override
  ProductByCategoryProvider getProviderOverride(
    covariant ProductByCategoryProvider provider,
  ) {
    return call(
      provider.category,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'productByCategoryProvider';
}

/// See also [productByCategory].
class ProductByCategoryProvider
    extends AutoDisposeFutureProvider<List<Product>> {
  /// See also [productByCategory].
  ProductByCategoryProvider(
    String category,
  ) : this._internal(
          (ref) => productByCategory(
            ref as ProductByCategoryRef,
            category,
          ),
          from: productByCategoryProvider,
          name: r'productByCategoryProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$productByCategoryHash,
          dependencies: ProductByCategoryFamily._dependencies,
          allTransitiveDependencies:
              ProductByCategoryFamily._allTransitiveDependencies,
          category: category,
        );

  ProductByCategoryProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.category,
  }) : super.internal();

  final String category;

  @override
  Override overrideWith(
    FutureOr<List<Product>> Function(ProductByCategoryRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ProductByCategoryProvider._internal(
        (ref) => create(ref as ProductByCategoryRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        category: category,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<Product>> createElement() {
    return _ProductByCategoryProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ProductByCategoryProvider && other.category == category;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, category.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ProductByCategoryRef on AutoDisposeFutureProviderRef<List<Product>> {
  /// The parameter `category` of this provider.
  String get category;
}

class _ProductByCategoryProviderElement
    extends AutoDisposeFutureProviderElement<List<Product>>
    with ProductByCategoryRef {
  _ProductByCategoryProviderElement(super.provider);

  @override
  String get category => (origin as ProductByCategoryProvider).category;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
