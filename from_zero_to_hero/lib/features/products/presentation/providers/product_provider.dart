//TODO: Criar provedor de dados para produtos
import 'package:from_zero_to_hero/features/products/data/product_repository_impl.dart';
import 'package:from_zero_to_hero/features/products/presentation/providers/category_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/product.dart';

part 'product_provider.g.dart';

@riverpod
ProductRepositoryImpl productRepository(ProductRepositoryRef ref) {
  return ProductRepositoryImpl(dio: ref.watch(dioProvider));
}

@riverpod
FutureOr<List<Product>> productByCategory(
    ProductByCategoryRef ref, String category) async {
  List<Product> products = await ref
      .watch(productRepositoryProvider)
      .getProductsByCategory(category);
  return products;
}
