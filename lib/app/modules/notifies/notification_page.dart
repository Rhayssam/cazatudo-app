// Essenciais
import 'package:cazatudo_app/app/core/widgets/empty_view.dart';
import 'package:flutter/material.dart';

// UI
import 'package:cazatudo_app/app/core/ui/theme_config.dart';

// Widgets Personalizados
import 'package:cazatudo_app/app/core/widgets/custom_app_bar_title.dart';
import 'package:cazatudo_app/app/core/widgets/sliver_app_bar.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeConfig.background,
      body: CustomScrollView(
        slivers: [
          CustomSliverAppBar(
            actions: [
              const SizedBox(width: 15),
              CustomAppBarTitle(title: 'Notificações'),
            ],
          ),
          EmptyView(
              text: 'Você ainda não possui notificações',
              icon: Icons.notifications)
        ],
      ),
    );
  }
}
