// Essenciais
import 'package:flutter/material.dart';

// UI
import 'package:cazatudo_app/app/core/ui/theme_config.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeConfig.background,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Icon(
          Icons.menu,
          size: 27,
        ),
        actions: [
          CircleAvatar(
            radius: 18,
            backgroundImage: AssetImage('assets/images/p1.png'),
          )
        ],
        backgroundColor: ThemeConfig.mainColor,
      ),
    );
  }
}
