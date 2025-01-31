// Essenciais
import 'package:cazatudo_app/app/modules/onboard/onboard_controller.dart';
import 'package:flutter/material.dart';

// UI
import 'package:cazatudo_app/app/core/ui/theme_config.dart';
import 'package:cazatudo_app/app/core/ui/custom_text_styles.dart';

// Extensões
import 'package:video_player/video_player.dart';

// Widgets Personalizados
import 'package:cazatudo_app/app/core/widgets/primary_button.dart';

class OnboardPage extends StatefulWidget {
  const OnboardPage({super.key});

  @override
  State<OnboardPage> createState() => _OnboardPageState();
}

class _OnboardPageState extends State<OnboardPage> {
  late VideoPlayerController videoPlayerController;

  @override
  void initState() {
    super.initState();
    _initPlayer();
  }

  void _initPlayer() async {
    videoPlayerController = VideoPlayerController.asset(
        'assets/videos/video_intro2.mp4',
        videoPlayerOptions: VideoPlayerOptions(mixWithOthers: true))
      ..initialize().then((_) {});

    setState(() {
      videoPlayerController.play();
      videoPlayerController.setVolume(0);
      videoPlayerController.setLooping(true);
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

// TODO Get.find
  @override
  Widget build(BuildContext context) {
    final controller = OnboardController();
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 65,
            child: Container(
              child: VideoPlayer(videoPlayerController),
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
                          .copyWith(color: ThemeConfig.orange1),
                    ),
                    Text(
                      'de A a Z',
                      style: CustomTextStyles.mediumText24
                          .copyWith(color: ThemeConfig.orange1),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 32.0,
                        right: 32.0,
                        top: 16.0,
                        bottom: 4.0,
                      ),
                      child: PrimaryButton(
                        onPressed: () => controller.checkLogged(),
                        text: 'ACESSAR',
                      ),
                    ),
                    Spacer(),
                    Text(
                      'Cazatudo © 2025',
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
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
