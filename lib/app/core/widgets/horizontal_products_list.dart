// Essenciais
import 'package:flutter/material.dart';

// UI
import 'package:cazatudo_app/app/core/ui/theme_config.dart';

class HorizontalProductsList extends StatelessWidget {
  const HorizontalProductsList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 320,
          height: 250,
          margin: const EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
            color: ThemeConfig.lightOrange,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            children: [
              Container(
                height: 55,
                decoration: BoxDecoration(
                  color: ThemeConfig.grey,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 10),
                    Expanded(
                      flex: 8,
                      child: Container(
                        width: 150,
                        height: 40,
                        decoration: BoxDecoration(
                          color: ThemeConfig.orange1,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: ThemeConfig.background,
                      ),
                      child: Icon(
                        Icons.favorite_border,
                        size: 30,
                        color: ThemeConfig.lightGrey,
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: ThemeConfig.background,
                      ),
                      child: Icon(
                        Icons.add_shopping_cart_rounded,
                        size: 30,
                        color: ThemeConfig.lightGrey,
                      ),
                    ),
                    SizedBox(width: 10),
                  ],
                ),
              ),
              //* Content
              Container(
                height: 140,
                color: ThemeConfig.lightGrey,
                child: Row(
                  children: [
                    Container(
                      width: 140,
                      height: 140,
                      color: ThemeConfig.darkGrey,
                    ),
                    Container(
                      width: 180,
                      height: 140,
                      color: ThemeConfig.white,
                    ),
                  ],
                ),
              ),
              //* Footer
              Container(
                height: 55,
                decoration: BoxDecoration(
                  color: ThemeConfig.grey,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 10),
                    Expanded(
                      flex: 1,
                      child: Container(
                        width: 150,
                        height: 40,
                        decoration: BoxDecoration(
                          color: ThemeConfig.orange1,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
