import 'package:deafcantalk/custom_widgets/youtube_player.dart';
//import 'package:deafcantalk/views/main/home_view.dart';
import 'package:flutter/material.dart';

class CategoryPlayer extends StatelessWidget {
  final String title;
  const CategoryPlayer({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(0, 153, 156, 1),
      appBar: AppBar(
        title: Text(title.toString()),
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: const YoutubePlayerView(),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
          ],
        ),
      ),
    );
  }
}
