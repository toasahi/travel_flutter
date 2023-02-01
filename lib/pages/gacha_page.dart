import 'package:flutter/material.dart';

import 'package:video_player/video_player.dart';
import 'package:page_transition/page_transition.dart';

import 'package:gacha_travel/pages/gacha_home_page.dart';

class GachaPage extends StatefulWidget {
  const GachaPage({super.key});

  @override
  State<GachaPage> createState() => _GachaPageState();
}

class _GachaPageState extends State<GachaPage> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/mp4/Bgacha.mp4');
    _controller.initialize().then((_) {
      // 最初のフレームを描画するため初期化後に更新
      setState(() {
        _controller.play();
      });
    });

    Future.delayed(const Duration(seconds: 11), () {
      Navigator.push(
        context,
        PageTransition(
          type: PageTransitionType.fade,
          isIos: true,
          child: const GachaHomePage(),
        ),
      );
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) => _controller.value.isInitialized
            ? AspectRatio(
                aspectRatio: constraints.maxWidth / constraints.maxHeight,
                child: VideoPlayer(_controller),
              )
            : Container(),
      ),
    );
  }
}
