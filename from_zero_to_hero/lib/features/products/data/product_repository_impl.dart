//TODO: Implementar repositório de dados.
import 'package:dio/dio.dart';

import '../domain/product.dart';

class ProductRepositoryImpl {
  final Dio dio;

  ProductRepositoryImpl({required this.dio});

  Future<List<Product>> getProductsByCategory(String category) async {
    Response response = await dio.get('/category/$category');
    List productList = response.data['products'];

    return [for (final p in productList) Product.fromJson(p)];
  }
}
