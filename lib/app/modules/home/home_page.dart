// Essenciais
import 'package:cazatudo_app/app/modules/home/banner_widget.dart';
import 'package:get/get.dart';
import 'package:cazatudo_app/app/core/ui/custom_text_styles.dart';
import 'package:flutter/material.dart';

// UI
import 'package:cazatudo_app/app/core/ui/theme_config.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// Widgets
import 'package:cazatudo_app/app/core/widgets/custom_app_bar.dart';

// Rotas
import 'package:cazatudo_app/app/core/app_routes/app_routes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

final _controlPage = PageController();

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeConfig.background,
      appBar: CustomAppBar(),
      //* Início da tela
      body: SafeArea(
          child: CustomScrollView(
        slivers: [BannerWidget(pageController: _controlPage)],
      )),
    );
  }
}
