// Essenciais
import 'package:flutter/material.dart';

// Rotas
import 'package:cazatudo_app/app/core/app_routes/app_routes.dart';

// UI
import 'package:cazatudo_app/app/core/ui/theme_config.dart';
import 'package:cazatudo_app/app/core/ui/custom_text_styles.dart';
import 'package:get/get.dart';

class HorizontalProductsList extends StatefulWidget {
  final String texto;
  final double valorAntigo;
  final double valorPix;

  const HorizontalProductsList({
    Key? key,
    required this.texto,
    required this.valorAntigo,
    required this.valorPix,
  }) : super(key: key);

  @override
  State<HorizontalProductsList> createState() => _HorizontalProductsListState();
}

class _HorizontalProductsListState extends State<HorizontalProductsList> {
  bool isFavorite = false;
  bool isInCart = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {
            Get.toNamed(AppRoutes.product);
          },
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          borderRadius: BorderRadius.circular(12),
          child: Container(
            width: 320,
            height: 250,
            margin: const EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              color: ThemeConfig.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: ThemeConfig.grey.withOpacity(0.2),
                  spreadRadius: 1,
                  blurRadius: 8,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              children: [
                Header(),
                Content(),
                Footer(),
              ],
            ),
          ),
        ),
        SizedBox(height: 15),
      ],
    );
  }

  Container Footer() {
    return Container(
      height: 55,
      decoration: BoxDecoration(
        // color: ThemeConfig.grey,
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
              child: Center(
                child: Text(
                  'Tempo Restante',
                  style: CustomTextStyles.smallText16
                      .copyWith(color: ThemeConfig.white),
                ),
              ),
            ),
          ),
          SizedBox(width: 10),
        ],
      ),
    );
  }

  Container Content() {
    return Container(
      height: 140,
      // color: ThemeConfig.lightGrey,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 140,
            height: 140,
            color: ThemeConfig.lightOrange,
          ),
          Container(
            width: 180,
            height: 170,
            color: ThemeConfig.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //* Titulo do produto
                Container(
                  height: 60,
                  width: 180,
                  // color: ThemeConfig.grey,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: Text(
                      widget.texto,
                      style: CustomTextStyles.smallText13
                          .copyWith(color: ThemeConfig.black),
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                    ),
                  ),
                ),
                //* Valor anterior
                Container(
                  height: 20,
                  width: 180,
                  // color: ThemeConfig.grey,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: Text(
                      'R\$${widget.valorAntigo}',
                      style: CustomTextStyles.smallText12
                          .copyWith(color: ThemeConfig.lightGrey),
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ),
                ),
                //* Valor no PIX
                Container(
                  height: 30,
                  width: 180,
                  // color: ThemeConfig.grey,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: Text(
                      'R\$${widget.valorPix}',
                      style: CustomTextStyles.mediumText18
                          .copyWith(color: ThemeConfig.orange1),
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ),
                ),
                //* Valor parcelado
                Container(
                  height: 15,
                  width: 180,
                  // color: ThemeConfig.grey,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: Text(
                      'À vista no PIX',
                      style: CustomTextStyles.smallText11
                          .copyWith(color: ThemeConfig.lightGrey),
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ),
                ),
                Container(
                  height: 15,
                  width: 180,
                  // color: ThemeConfig.grey,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // color: ThemeConfig.background,
                        width: 44,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4),
                          child: Text(
                            'Ou até',
                            style: CustomTextStyles.smallText11
                                .copyWith(color: ThemeConfig.lightGrey),
                            softWrap: true,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                        ),
                      ),
                      Container(
                        // color: ThemeConfig.background,
                        width: 135,
                        child: Text(
                          '10x de R\$00,00',
                          style: CustomTextStyles.smallText11
                              .copyWith(color: ThemeConfig.black),
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container Header() {
    return Container(
      height: 55,
      decoration: BoxDecoration(
        //* color: ThemeConfig.grey,
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
              child: Center(
                  child: Text(
                'Oferta',
                style: CustomTextStyles.smallText14
                    .copyWith(color: ThemeConfig.white),
              )),
            ),
          ),
          SizedBox(width: 10),
          GestureDetector(
            onTap: () {
              setState(() {
                isFavorite = !isFavorite;
              });
            },
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                //* color: ThemeConfig.background,
              ),
              child: Icon(
                isFavorite ? Icons.favorite : Icons.favorite_border,
                size: 30,
                color: isFavorite ? ThemeConfig.orange1 : ThemeConfig.lightGrey,
              ),
            ),
          ),
          SizedBox(width: 10),
          GestureDetector(
            onTap: () {
              setState(() {
                isInCart = !isInCart;
              });
            },
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                //* color: ThemeConfig.background,
              ),
              child: Icon(
                isInCart
                    ? Icons.add_shopping_cart_rounded
                    : Icons.add_shopping_cart_rounded,
                size: 30,
                color: isInCart ? ThemeConfig.orange1 : ThemeConfig.lightGrey,
              ),
            ),
          ),
          SizedBox(width: 10),
        ],
      ),
    );
  }
}
