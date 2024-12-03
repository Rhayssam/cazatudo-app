import 'package:cazatudo_app/app/core/ui/custom_text_styles.dart';
import 'package:cazatudo_app/app/core/ui/theme_config.dart';
import 'package:cazatudo_app/app/core/widgets/custom_circular_progress_indicator.dart';
import 'package:cazatudo_app/app/core/widgets/multi_text_button.dart';
import 'package:cazatudo_app/app/core/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

class OnboardPage extends StatefulWidget {
  const OnboardPage({super.key});

  @override
  State<OnboardPage> createState() => _OnboardPageState();
}

class _OnboardPageState extends State<OnboardPage> {
  late VideoPlayerController _videoPlayerController;
  Future<void>? _initializeVideoPlayerFuture;

  @override
  void initState() {
    _videoPlayerController =
        VideoPlayerController.asset('assets/videos/video_intro.mp4')
          ..initialize().then((_) {
            _videoPlayerController.play();
          });

    _initializeVideoPlayerFuture = _videoPlayerController.initialize();
    _videoPlayerController.setLooping(true);
    super.initState();
  }

  @override
  void dispose() {
    // _videoPlayerController.pause();
    _videoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 65,
            child: Container(
              child: Center(
                child: FutureBuilder(
                  future: _initializeVideoPlayerFuture,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.done) {
                      return AspectRatio(
                        aspectRatio: _videoPlayerController.value.aspectRatio,
                        child: VideoPlayer(_videoPlayerController),
                      );
                    } else {
                      return Center(
                        child: CustomCircularProgressIndicator(),
                      );
                    }
                  },
                ),
              ),
            ),
          ),
          Expanded(
            flex: 35,
            child: Container(
              color: ThemeConfig.iceWhite,
              child: Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 60,
                    ),
                    Text(
                      'Móveis e Decoração',
                      style: CustomTextStyles.mediumText
                          .copyWith(color: ThemeConfig.orange),
                    ),
                    Text(
                      'de A a Z',
                      style: CustomTextStyles.mediumText24
                          .copyWith(color: ThemeConfig.orange),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 32.0,
                        right: 32.0,
                        top: 16.0,
                        bottom: 4.0,
                      ),
                      child: PrimaryButton(
                        onPressed: () {
                          Get.toNamed('/signIn');
                        },
                        text: 'Vamos Lá!',
                      ),
                    ),
                    MultiTextButton(
                      onPressed: () {
                        Get.toNamed('/signUp');
                      },
                      children: [
                        Text(
                          'Ainda não possui uma conta? ',
                          style: CustomTextStyles.smallText
                              .copyWith(color: ThemeConfig.grey),
                        ),
                        Text(
                          'Criar Conta!',
                          style: CustomTextStyles.smallText
                              .copyWith(color: ThemeConfig.orange),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
