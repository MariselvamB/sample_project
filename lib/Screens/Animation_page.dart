import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:simpleapp/utils/app_strings.dart';

import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class AnimationPage extends StatefulWidget {
  const AnimationPage({super.key});

  @override
  State<AnimationPage> createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage> {
  // late YoutubePlayerController _youtupecontroller;
  late YoutubePlayerController _youtupeListcontroller;
  bool selected = true;

  @override
  void initState() {
    super.initState();

    // _youtupecontroller = YoutubePlayerController(
    //     params: YoutubePlayerParams(
    //         showControls: true,
    //         loop: true,
    //         mute: true,
    //         showFullscreenButton: true,
    //         strictRelatedVideos: true))
    //   ..onInit = () {
    //     _youtupecontroller.loadVideoById(
    //       videoId: 'K18cpp_-gP8',
    //       startSeconds: 0,
    //     );
    //   };
    _youtupeListcontroller = YoutubePlayerController(
        params: const YoutubePlayerParams(
            showControls: true,
            loop: true,
            mute: true,
            showFullscreenButton: true,
            strictRelatedVideos: true))
      ..onInit = () {
        _youtupeListcontroller.loadPlaylist(
          list: [
            "r5kJ-NcS-6A",
            "I_6aMZwf9CU",
            "5hs8cZXxJU4",
            "uNGfc0o_U8g",
            "8ldYdR_AL9E",
          ],
          listType: ListType.playlist,
          startSeconds: 0,
        );
      };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(AppStrings.youtube),
          actions: [
            const Icon(Icons.devices),
            const Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Icon(Icons.alarm),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 15),
              child: Icon(Icons.search),
            ),
          ],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(children: [
            // Container(
            //     child: YoutubePlayer(
            //   controller: _youtupeListcontroller,
            //   aspectRatio: 10 / 9,
            // )),
            Container(
                child: YoutubePlayer(
              controller: _youtupeListcontroller,
              aspectRatio: 8 / 5,
            )),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    selected = !selected;
                  });
                },
                child: AspectRatio(
                  aspectRatio: 12 / 3,
                  child: Opacity(
                    opacity: .8,
                    child: Container(
                      transform: Matrix4.rotationZ(.2),
                      alignment: Alignment.center,
                      color: selected
                          ? Colors.transparent
                          : Color.fromARGB(255, 112, 232, 130),
                      height: 200,
                      width: 200,
                      child: AnimatedAlign(
                        alignment:
                            selected ? Alignment.center : Alignment.topRight,
                        duration: const Duration(milliseconds: 2000),
                        curve: Curves.fastOutSlowIn,
                        child: AnimatedContainer(
                          width: selected ? 60.0 : 120.0,
                          height: selected ? 60.0 : 120.0,
                          color: selected ? Colors.red : Colors.blue,
                          alignment: selected
                              ? Alignment.center
                              : AlignmentDirectional.topCenter,
                          duration: const Duration(seconds: 1),
                          curve: Curves.fastOutSlowIn,
                          child: Icon(
                            Icons.favorite,
                            color: Colors.pink,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ]),
        ));
  }
}
