// ignore_for_file: non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class youtupePlayerPage extends StatefulWidget {
  const youtupePlayerPage({super.key});

  @override
  State<youtupePlayerPage> createState() => _youtupePlayerPageState();
}

class _youtupePlayerPageState extends State<youtupePlayerPage> {
  late YoutubePlayerController _controller;

  bool selected = false;

  @override
  void initState() {
    super.initState();

    _controller = YoutubePlayerController()
      ..onInit = () {
        _controller.loadVideoById(videoId: 'K18cpp_-gP8', startSeconds: 30);
      };
  }

  double width = 200;
  double height = 200;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Visibility(
          visible: true,
          child: Opacity(
            opacity: 0.1,
            child: AnimatedContainer(
              duration: Duration(seconds: 2),
              width: width,
              height: height,
              child: YoutubePlayer(
                controller: _controller,
              ),
            ),
          ),
        ),
        ElevatedButton(
            onPressed: () {
              setState(() {
                height == 200 ? height = 400 : height = 200;
                width == 200 ? width = 400 : width = 200;
              });
            },
            child: Text("Start Animation")),
        GestureDetector(
          onTap: () {
            setState(() {
              selected = !selected;
            });
          },
          child: Center(
            child: Container(
              width: 250.0,
              height: 250.0,
              color: Colors.red,
              child: AnimatedAlign(
                alignment: selected ? Alignment.topRight : Alignment.bottomLeft,
                duration: const Duration(seconds: 5),
                curve: Curves.fastOutSlowIn,
                child: const FlutterLogo(size: 50.0),
              ),
            ),
          ),
        )
      ],
    );
  }
}
