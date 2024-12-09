// Essenciais
import 'package:flutter/material.dart';

// Widgets Personalizados - AppBar
import 'package:cazatudo_app/app/core/widgets/custom_app_bar.dart';
import 'package:cazatudo_app/app/core/widgets/custom_app_bar_search.dart';
import 'package:cazatudo_app/app/core/widgets/custom_app_bar_cart.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        actions: [
          CustomAppBarSearch(),
          CustomAppBarCart(),
        ],
      ),
      body: Container(
        child: Text('Categorias'),
      ),
    );
  }
}
