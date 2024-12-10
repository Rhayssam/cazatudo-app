// Essenciais
import 'package:flutter/material.dart';

// UI
import 'package:cazatudo_app/app/core/ui/custom_text_styles.dart';
import 'package:cazatudo_app/app/core/ui/theme_config.dart';

class VerticalProductsList extends StatelessWidget {
  const VerticalProductsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      sliver: SliverGrid(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: ThemeConfig.lightOrange,
                boxShadow: [
                  BoxShadow(
                    color: ThemeConfig.lightGrey,
                    offset: Offset(3, 1),
                    blurRadius: 10,
                  ),
                ],
              ),
              child: Stack(
                children: [
                  Center(
                    child: Text(
                      'Produto',
                      style: CustomTextStyles.smallText16
                          .copyWith(color: ThemeConfig.white),
                    ),
                  )
                ],
              ),
            );
          },
          childCount: 6,
        ),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: 300,
          mainAxisSpacing: 20,
          crossAxisSpacing: 10,
        ),
      ),
    );
  }
}
