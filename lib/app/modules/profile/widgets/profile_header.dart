// ignore_for_file: public_member_api_docs, sort_constructors_first
// Essenciais
import 'package:flutter/material.dart';

// UI
import 'package:cazatudo_app/app/core/ui/custom_text_styles.dart';
import 'package:cazatudo_app/app/core/ui/theme_config.dart';

class ProfileHeader extends StatelessWidget {
  final String name;
  final String email;
  ProfileHeader({
    Key? key,
    required this.name,
    required this.email,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        height: 100,
        color: ThemeConfig.white,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Container(
                width: 100,
                child: Center(
                  child: Stack(
                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: ThemeConfig.lightOrange,
                        ),
                        child: CircleAvatar(
                          backgroundImage: AssetImage('assets/images/p1.png'),
                        ),
                      ),
                      Container(
                        width: 22,
                        height: 22,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: ThemeConfig.background,
                        ),
                        child: Icon(
                          Icons.edit,
                          size: 20,
                          color: ThemeConfig.orange1,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 15,
                    top: 15,
                  ),
                  child: Container(
                    child: Text(
                      'Olá, $name',
                      //TODO Fazer a implementação do nome do usuário
                      style: CustomTextStyles.mediumText18
                          .copyWith(color: ThemeConfig.darkGrey),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 15,
                  ),
                  child: Container(
                    child: Row(
                      children: [
                        Icon(
                          Icons.email,
                          color: ThemeConfig.orange1,
                          size: 20,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          '$email',
                          //TODO Fazer a implementação do nome do email
                          style: CustomTextStyles.smallText14.copyWith(
                            color: ThemeConfig.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
