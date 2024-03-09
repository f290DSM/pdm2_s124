import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:from_zero_to_hero/features/products/presentation/providers/category_provider.dart';
import 'package:from_zero_to_hero/features/products/presentation/widgets/category_widget.dart';

class CategoryPage extends ConsumerWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var categories = ref.watch(categoriesProvider);

    return Scaffold(
        appBar: AppBar(
          elevation: 8,
          title: const Text('Category Products'),
        ),
        body: categories.when(
          data: (data) {
            return ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                return CategoryCard(
                  category: data[index],
                  indexColor: index,
                );
              },
            );
          },
          error: (error, stackTrace) {
            return Center(
              child: Text(error.toString()),
            );
          },
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
        ));
  }
}
