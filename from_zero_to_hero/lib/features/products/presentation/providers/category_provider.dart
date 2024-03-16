import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'category_provider.g.dart';

@riverpod
Dio dio(DioRef ref) {
  return Dio(BaseOptions(baseUrl: 'https://dummyjson.com/products'));
}

@riverpod
FutureOr<List<String>> categories(CategoriesRef ref) async {
  Response response = await ref.watch(dioProvider).get('/categories');
  return [for (String c in response.data as List) c.toString()];
}
